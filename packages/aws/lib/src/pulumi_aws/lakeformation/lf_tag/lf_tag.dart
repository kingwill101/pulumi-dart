import 'package:pulumi/pulumi.dart' as pulumi;
import 'lf_tag_args.dart';

/// Creates an LF-Tag with the specified name and values. Each key must have at least one value. The maximum number of values permitted is 1000.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Lake Formation LF-Tags using the `catalog_id:key`. If you have not set a Catalog ID specify the AWS Account ID that the database is in. For example:
///
/// ```sh
/// $ pulumi import aws:lakeformation/lfTag:LfTag example 123456789012:some_key
/// ```
class LfTag extends pulumi.CustomResource {
  /// ID of the Data Catalog to create the tag in. If omitted, this defaults to the AWS Account ID.
  late final pulumi.Output<String> catalogId;

  /// Key-name for the tag.
  late final pulumi.Output<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// List of possible values an attribute can take.
  late final pulumi.Output<List<String>> values;

  LfTag(
    String name, {
    LfTagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/lfTag:LfTag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.catalogId = registerOutput<String>('catalogId');
    this.key = registerOutput<String>('key');
    this.region = registerOutput<String>('region');
    this.values = registerOutput<List<String>>('values');
  }
}
