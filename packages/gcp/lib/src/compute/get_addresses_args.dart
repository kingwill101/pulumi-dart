// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_addresses_get_addresses_args_doc}
/// Arguments for getAddresses.
/// {@endtemplate}
/// {@macro pulumi_compute_get_addresses_get_addresses_args_doc}
class GetAddressesArgs {
  /// A filter expression that
  /// filters resources listed in the response. The expression must specify
  /// the field name, an operator, and the value that you want to use for
  /// filtering. The value must be a string, a number, or a boolean. The
  /// operator must be either "=", "!=", ">", "<", "<=", ">=" or ":". For
  /// example, if you are filtering Compute Engine instances, you can
  /// exclude instances named "example-instance" by specifying "name !=
  /// example-instance". The ":" operator can be used with string fields to
  /// match substrings. For non-string fields it is equivalent to the "="
  /// operator. The ":*" comparison can be used to test whether a key has
  /// been defined. For example, to find all objects with "owner" label
  /// use: """ labels.owner:* """ You can also filter nested fields. For
  /// example, you could specify "scheduling.automaticRestart = false" to
  /// include instances only if they are not scheduled for automatic
  /// restarts. You can use filtering on nested fields to filter based on
  /// resource labels. To filter on multiple expressions, provide each
  /// separate expression within parentheses. For example: """
  /// (scheduling.automaticRestart = true) (cpuPlatform = "Intel Skylake")
  /// """ By default, each expression is an "AND" expression. However, you
  /// can include "AND" and "OR" expressions explicitly. For example: """
  /// (cpuPlatform = "Intel Skylake") OR (cpuPlatform = "Intel Broadwell")
  /// AND (scheduling.automaticRestart = true)
  final pulumi.Input<String>? filter;
  /// The google project in which addresses are listed.
  /// Defaults to provider's configuration if missing.
  final pulumi.Input<String>? project;
  /// Region that should be considered to search addresses.
  /// All regions are considered if missing.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAddressesArgs].
  /// [filter] A filter expression that
  /// [project] The google project in which addresses are listed.
  /// [region] Region that should be considered to search addresses.
  GetAddressesArgs({
    String? filter,
    String? project,
    String? region,
  }) :
      filter = pulumi.Input.asOptionalInput<String>(filter),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetAddressesArgs.fromMap(Map<String, dynamic> map) {
    return GetAddressesArgs(
      filter: map['filter'] == null ? null : map['filter'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

