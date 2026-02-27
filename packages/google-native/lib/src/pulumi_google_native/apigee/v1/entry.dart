import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_args.dart';

/// Creates key value entries in a key value map scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.
class Entry extends pulumi.CustomResource {
  late final pulumi.Output<String> apiId;
  late final pulumi.Output<String> keyvaluemapId;

  /// Resource URI that can be used to identify the scope of the key value map entries.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Data or payload that is being retrieved and associated with the unique key.
  late final pulumi.Output<String> value;

  Entry(
    String name, {
    EntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Entry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.keyvaluemapId = registerOutput<String>('keyvaluemapId');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.value = registerOutput<String>('value');
  }
}
