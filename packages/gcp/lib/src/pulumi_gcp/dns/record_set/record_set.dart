import 'package:pulumi/pulumi.dart' as pulumi;
import '../record_set_routing_policy/record_set_routing_policy.dart';
import 'record_set_args.dart';

/// ## Example Usage
///
/// ### Binding a DNS name to the ephemeral IP of a new instance:
///
///
///
/// ### Adding an A record
///
///
///
/// ### Adding an MX record
///
///
///
/// ### Adding an SPF record
///
/// Quotes (`""`) must be added around your `rrdatas` for a SPF record. Otherwise `rrdatas` string gets split on spaces.
///
///
///
/// ### Adding a CNAME record
///
/// The list of `rrdatas` should only contain a single string corresponding to the Canonical Name intended.
///
///
///
/// ### Setting Routing Policy instead of using rrdatas
/// ### Geolocation
///
///
///
/// ### Failover
///
///
///
/// ### Public zone failover
///
///
///
/// ## Import
///
/// DNS record sets can be imported using either of these accepted formats:
///
/// * `projects/{{project}}/managedZones/{{zone}}/rrsets/{{name}}/{{type}}`
///
/// * `{{project}}/{{zone}}/{{name}}/{{type}}`
///
/// * `{{zone}}/{{name}}/{{type}}`
///
/// When using the `pulumi import` command, DNS record sets can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dns/recordSet:RecordSet default projects/{{project}}/managedZones/{{zone}}/rrsets/{{name}}/{{type}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dns/recordSet:RecordSet default {{project}}/{{zone}}/{{name}}/{{type}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dns/recordSet:RecordSet default {{zone}}/{{name}}/{{type}}
/// ```
///
/// Note: The record name must include the trailing dot at the end.
class RecordSet extends pulumi.CustomResource {
  /// The name of the zone in which this record set will
  /// reside.
  late final pulumi.Output<String> managedZone;

  /// The DNS name this record set will apply to.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The configuration for steering traffic based on query.
  /// Now you can specify either Weighted Round Robin(WRR) type or Geolocation(GEO) type.
  /// Structure is documented below.
  late final pulumi.Output<RecordSetRoutingPolicy?> routingPolicy;
  late final pulumi.Output<List<String>?> rrdatas;

  /// The time-to-live of this record set (seconds).
  late final pulumi.Output<int?> ttl;

  /// The DNS record set type.
  ///
  /// - - -
  late final pulumi.Output<String> type;

  RecordSet(
    String name, {
    RecordSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dns/recordSet:RecordSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.managedZone = registerOutput<String>('managedZone');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.routingPolicy =
        registerOutput<RecordSetRoutingPolicy?>('routingPolicy');
    this.rrdatas = registerOutput<List<String>?>('rrdatas');
    this.ttl = registerOutput<int?>('ttl');
    this.type = registerOutput<String>('type');
  }
}
