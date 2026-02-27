import 'package:pulumi/pulumi.dart' as pulumi;
import '../billing_group_metadata/billing_group_metadata.dart';
import '../billing_group_properties/billing_group_properties.dart';
import 'billing_group_args.dart';

/// Manages an AWS IoT Billing Group.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IoT Billing Groups using the name. For example:
///
/// ```sh
/// $ pulumi import aws:iot/billingGroup:BillingGroup example example
/// ```
class BillingGroup extends pulumi.CustomResource {
  /// The ARN of the Billing Group.
  late final pulumi.Output<String> arn;
  late final pulumi.Output<List<BillingGroupMetadata>> metadatas;

  /// The name of the Billing Group.
  late final pulumi.Output<String> name;

  /// The Billing Group properties. Defined below.
  late final pulumi.Output<BillingGroupProperties?> properties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value mapping of resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The current version of the Billing Group record in the registry.
  late final pulumi.Output<int> version;

  BillingGroup(
    String name, {
    BillingGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/billingGroup:BillingGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.metadatas = registerOutput<List<BillingGroupMetadata>>('metadatas');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<BillingGroupProperties?>('properties');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.version = registerOutput<int>('version');
  }
}
