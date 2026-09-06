import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ResolverLevelMetricsBehavior implements pulumi.PulumiEnum<String> {
  fULLREQUESTRESOLVERMETRICS("FULL_REQUEST_RESOLVER_METRICS"),
  pERRESOLVERMETRICS("PER_RESOLVER_METRICS");

  const ResolverLevelMetricsBehavior(this.wireValue);
  @override
  final String wireValue;

  static ResolverLevelMetricsBehavior fromValue(String value) {
    for (final item in ResolverLevelMetricsBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResolverLevelMetricsBehavior value: $value');
  }
}
