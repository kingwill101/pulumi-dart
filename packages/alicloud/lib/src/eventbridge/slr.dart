import 'package:pulumi/pulumi.dart' as pulumi;
import 'slr_args.dart';

class Slr extends pulumi.CustomResource {
  late final pulumi.Output<String> productName;

  /// Creates a new [Slr].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Slr]. {@macro pulumi_eventbridge_slr_slr_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Slr(
    String name, {
    SlrArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eventbridge/slr:Slr',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.productName = registerOutput<String>('productName');
  }
}
