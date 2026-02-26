// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAddresses.
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
  final Input<String>? filter;

  /// The google project in which addresses are listed.
  /// Defaults to provider's configuration if missing.
  final Input<String>? project;

  /// Region that should be considered to search addresses.
  /// All regions are considered if missing.
  final Input<String>? region;

  GetAddressesArgs({
    this.filter,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetAddressesArgs.fromMap(Map<String, dynamic> map) {
    return GetAddressesArgs(
      filter: Input.asOptionalInput<String>(map['filter']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
