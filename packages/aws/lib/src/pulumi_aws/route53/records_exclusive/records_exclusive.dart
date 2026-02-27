import 'package:pulumi/pulumi.dart' as pulumi;
import '../records_exclusive_resource_record_set/records_exclusive_resource_record_set.dart';
import '../records_exclusive_timeouts/records_exclusive_timeouts.dart';
import 'records_exclusive_args.dart';

/// Resource for maintaining exclusive management of resource record sets defined in an AWS Route53 hosted zone.
///
/// !> This resource takes exclusive ownership over resource record sets defined in a hosted zone. This includes removal of record sets which are not explicitly configured. To prevent persistent drift, ensure any `aws.route53.Record` resources managed alongside this resource have an equivalent `resource_record_set` argument.
///
/// > Destruction of this resource means Terraform will no longer manage reconciliation of the configured resource record sets. It __will not__ delete the configured record sets from the hosted zone.
///
/// > The default `NS` and `SOA` records created during provisioning of the Route53 Zone __should not be included__ in this resource definition. Adding them will cause persistent drift as the read operation is explicitly configured to ignore writing them to state.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Disallow Record Sets
///
/// To automatically remove any configured record sets, omit a `resource_record_set` block.
///
/// > This will not __prevent__ record sets from being defined in a hosted zone via Terraform (or any other interface). This resource enables bringing record set definitions into a configured state, however, this reconciliation happens only when `apply` is proactively run.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Route 53 Records Exclusive using the `zone_id`. For example:
///
/// ```sh
/// $ pulumi import aws:route53/recordsExclusive:RecordsExclusive example ABCD1234
/// ```
class RecordsExclusive extends pulumi.CustomResource {
  /// A list of all resource record sets associated with the hosted zone.
  /// See `resource_record_set` below.
  late final pulumi.Output<List<RecordsExclusiveResourceRecordSet>?>
      resourceRecordSets;
  late final pulumi.Output<RecordsExclusiveTimeouts?> timeouts;

  /// ID of the hosted zone containing the resource record sets.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> zoneId;

  RecordsExclusive(
    String name, {
    RecordsExclusiveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/recordsExclusive:RecordsExclusive',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.resourceRecordSets =
        registerOutput<List<RecordsExclusiveResourceRecordSet>?>(
            'resourceRecordSets');
    this.timeouts = registerOutput<RecordsExclusiveTimeouts?>('timeouts');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
