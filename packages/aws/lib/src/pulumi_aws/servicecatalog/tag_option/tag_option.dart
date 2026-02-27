import 'package:pulumi/pulumi.dart';
import 'tag_option_args.dart';

/// Manages a Service Catalog Tag Option.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.servicecatalog.TagOption` using the tag option ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/tagOption:TagOption example tag-pjtvagohlyo3m
/// ```
class TagOption extends CustomResource {
  /// Whether tag option is active. Default is `true`.
  late final Output<bool?> active;

  /// Tag option key.
  late final Output<String> key;
  late final Output<String> owner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Tag option value.
  ///
  /// The following arguments are optional:
  late final Output<String> value;

  TagOption(
    String name, {
    TagOptionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/tagOption:TagOption',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.active = registerOutput<bool?>('active');
    this.key = registerOutput<String>('key');
    this.owner = registerOutput<String>('owner');
    this.region = registerOutput<String>('region');
    this.value = registerOutput<String>('value');
  }
}
