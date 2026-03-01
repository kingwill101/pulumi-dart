import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_args.dart';

class Alias extends pulumi.CustomResource {
  late final pulumi.Output<String> accountAlias;

  /// Creates a new [Alias].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Alias]. {@macro pulumi_ram_alias_alias_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Alias(
    String name, {
    AliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ram/alias:Alias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountAlias = registerOutput<String>('accountAlias');
  }
}
