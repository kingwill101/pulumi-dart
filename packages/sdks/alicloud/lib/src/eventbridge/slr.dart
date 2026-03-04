import 'package:pulumi/pulumi.dart' as pulumi;
import 'slr_args.dart';
import 'slr_state.dart';

class Slr extends pulumi.CustomResource {
  late final pulumi.Output<String> productName;

  /// Creates a new [Slr].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Slr]. {@macro pulumi_eventbridge_slr_slr_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Slr(String name, {SlrArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:eventbridge/slr:Slr',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    productName = registerOutput<String>('productName');
  }

  /// Gets an existing [Slr] resource's state with the given [name] and [id].
  static Slr get(String name, pulumi.Input<String> id, {SlrState? state}) {
    return Slr._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Slr._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eventbridge/slr:Slr',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    productName = registerOutput<String>('productName');
  }
}
