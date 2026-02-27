import 'package:pulumi/pulumi.dart';
import 'smsvoicev2_opt_out_list_args.dart';

/// Manages an AWS End User Messaging SMS opt-out list.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import opt-out lists using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/smsvoicev2OptOutList:Smsvoicev2OptOutList example example-opt-out-list
/// ```
class Smsvoicev2OptOutList extends CustomResource {
  /// ARN of the opt-out list.
  late final Output<String> arn;

  /// The name of the opt-out list.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Smsvoicev2OptOutList(
    String name, {
    Smsvoicev2OptOutListArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsvoicev2OptOutList:Smsvoicev2OptOutList',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
