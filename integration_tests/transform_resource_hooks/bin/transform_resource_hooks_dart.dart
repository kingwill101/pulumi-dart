import 'package:pulumi/pulumi.dart';

class RandomResource extends CustomResource {
  RandomResource(
    String name,
    Input<int> length, {
    CustomResourceOptions? options,
  }) : super(
          'testprovider:index:Random',
          name,
          {'length': length},
          options ?? CustomResourceOptions(),
        );
}

ResourceOptions appendAfterCreateHook(
  ResourceOptions options,
  ResourceHook hook,
) {
  final hooks = options.hooks ?? const ResourceHookBinding();
  return ResourceOptions(
    parent: options.parent,
    dependsOn: options.dependsOn,
    protect: options.protect,
    provider: options.provider,
    providers: options.providers,
    aliases: options.aliases,
    customTimeouts: options.customTimeouts,
    deleteBeforeReplace: options.deleteBeforeReplace,
    ignoreChanges: options.ignoreChanges,
    version: options.version,
    pluginDownloadURL: options.pluginDownloadURL,
    replacementOptions: options.replacementOptions,
    resourceTransformations: options.resourceTransformations,
    resourceTransforms: options.resourceTransforms,
    hooks: hooks.copyWith(afterCreate: [...hooks.afterCreate, hook]),
  );
}

Future<void> main() async {
  final code = await DeploymentImpl.run(() {
    RandomResource(
      'res',
      Input.fromValue(10),
      options: CustomResourceOptions(
        transformations: [
          (args) {
            final transformHook =
                ResourceHook('transform_hook', (hookArgs) async {
              final parts = hookArgs.urn.split('::');
              final resourceType = parts.length > 2 ? parts[2] : '';
              if (resourceType != 'testprovider:index:Random') {
                throw StateError(
                  "Expected type 'testprovider:index:Random', got $resourceType",
                );
              }
              await DeploymentImpl.instance.logger.info(
                'Hook was called with length = ${hookArgs.newInputs?['length']}',
              );
            });

            return ResourceTransformationResult(
              args.args,
              appendAfterCreateHook(args.options, transformHook),
            );
          },
        ],
      ),
    );
  });
  if (code != 0) {
    throw Exception('Deployment failed with exit code $code');
  }
}
