import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_args.dart';
import 'alias_state.dart';

class Alias extends pulumi.CustomResource {
  late final pulumi.Output<String> accountAlias;

  /// Creates a new [Alias].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Alias]. {@macro pulumi_ram_alias_alias_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Alias(String name, {AliasArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:ram/alias:Alias',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    accountAlias = registerOutput<String>('accountAlias');
  }

  /// Gets an existing [Alias] resource's state with the given [name] and [id].
  static Alias get(String name, pulumi.Input<String> id, {AliasState? state}) {
    return Alias._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Alias._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ram/alias:Alias',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountAlias = registerOutput<String>('accountAlias');
  }
}
