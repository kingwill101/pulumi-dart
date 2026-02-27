// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSolutionStack.
class GetSolutionStackArgs {
  /// If more than one result is returned, use the most
  /// recent solution stack.
  final pulumi.Input<bool>? mostRecent;

  /// Regex string to apply to the solution stack list returned
  /// by AWS. See [Elastic Beanstalk Supported Platforms][beanstalk-platforms] from
  /// AWS documentation for reference solution stack names.
  ///
  /// > **NOTE:** If more or less than a single match is returned by the search,
  /// this call will fail. Ensure that your search is specific enough to return
  /// a single solution stack, or use `most_recent` to choose the most recent one.
  final pulumi.Input<String> nameRegex;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetSolutionStackArgs({
    this.mostRecent,
    required this.nameRegex,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    map['nameRegex'] = nameRegex;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetSolutionStackArgs.fromMap(Map<String, dynamic> map) {
    return GetSolutionStackArgs(
      mostRecent: pulumi.Input.asOptionalInput<bool>(map['mostRecent']),
      nameRegex: pulumi.Input.asInput<String>(map['nameRegex']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
