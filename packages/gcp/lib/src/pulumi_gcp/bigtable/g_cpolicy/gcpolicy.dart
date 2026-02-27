import 'package:pulumi/pulumi.dart';
import '../gcpolicy_max_age/gcpolicy_max_age.dart';
import '../gcpolicy_max_version/gcpolicy_max_version.dart';
import 'gcpolicy_args.dart';

/// Creates a Google Cloud Bigtable GC Policy inside a family. For more information see
/// [the official documentation](https://cloud.google.com/bigtable/) and
/// [API](https://cloud.google.com/bigtable/docs/go/reference).
///
/// > **Warning**: We don't recommend having multiple GC policies for the same column
/// family as it may result in unexpected behavior.
///
/// > **Note**: GC policies associated with a replicated table cannot be destroyed directly.
/// Destroying a GC policy is translated into never perform garbage collection, this is
/// considered relaxing from pure age-based or version-based GC policy, hence not allowed.
/// The workaround is unreplicating the instance first by updating the instance to have one
/// cluster.
///
/// ## Example Usage
///
///
///
/// Multiple conditions is also supported. `UNION` when any of its sub-policies apply (OR). `INTERSECTION` when all its sub-policies apply (AND)
///
///
///
/// An example of more complex GC policy:
///
/// This is equivalent to running the following `cbt` command:
/// ```
/// cbt setgcpolicy your-table cf1 "(maxage=2d and maxversions=2) or maxage=10h"
/// ```
///
/// ## Import
///
/// This resource does not support import.
class GCPolicy extends CustomResource {
  /// The name of the column family.
  late final Output<String> columnFamily;

  /// The deletion policy for the GC policy.
  /// Setting ABANDON allows the resource to be abandoned rather than deleted. This is useful for GC policy as it cannot be deleted in a replicated instance.
  ///
  /// Possible values are: `ABANDON`.
  late final Output<String?> deletionPolicy;

  /// Serialized JSON object to represent a more complex GC policy. Conflicts with `mode`, `max_age` and `max_version`. Conflicts with `mode`, `max_age` and `max_version`.
  late final Output<String?> gcRules;

  /// Boolean for whether to allow ignoring warnings when updating the gc policy.
  /// Setting this to `true` allows relaxing the gc policy for replicated clusters by up to 90 days, but keep in mind this may increase how long clusters are inconsistent. Make sure
  /// you understand the risks listed at https://cloud.google.com/bigtable/docs/garbage-collection#increasing before setting this option.
  ///
  /// -----
  late final Output<bool?> ignoreWarnings;

  /// The name of the Bigtable instance.
  late final Output<String> instanceName;

  /// GC policy that applies to all cells older than the given age.
  late final Output<GCPolicyMaxAge?> maxAge;

  /// GC policy that applies to all versions of a cell except for the most recent.
  late final Output<List<GCPolicyMaxVersion>?> maxVersions;

  /// If multiple policies are set, you should choose between `UNION` OR `INTERSECTION`.
  late final Output<String?> mode;

  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The name of the table.
  late final Output<String> table;

  GCPolicy(
    String name, {
    GCPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/gCPolicy:GCPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.columnFamily = registerOutput<String>('columnFamily');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.gcRules = registerOutput<String?>('gcRules');
    this.ignoreWarnings = registerOutput<bool?>('ignoreWarnings');
    this.instanceName = registerOutput<String>('instanceName');
    this.maxAge = registerOutput<GCPolicyMaxAge?>('maxAge');
    this.maxVersions = registerOutput<List<GCPolicyMaxVersion>?>('maxVersions');
    this.mode = registerOutput<String?>('mode');
    this.project = registerOutput<String>('project');
    this.table = registerOutput<String>('table');
  }
}
