// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ApplicationAccessScope.
class ApplicationAccessScopeArgs {
  /// Specifies the ARN of the application with the access scope with the targets to add or update.
  final Input<String> applicationArn;

  /// Specifies an array list of ARNs that represent the authorized targets for this access scope.
  final Input<List<String>>? authorizedTargets;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies the name of the access scope to be associated with the specified targets.
  ///
  /// The following arguments are optional:
  final Input<String> scope;

  ApplicationAccessScopeArgs({
    required this.applicationArn,
    this.authorizedTargets,
    this.region,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationArn'] = applicationArn;
    final authorizedTargetsValue = authorizedTargets;
    if (authorizedTargetsValue != null) {
      map['authorizedTargets'] = authorizedTargetsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['scope'] = scope;
    return map;
  }

  factory ApplicationAccessScopeArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationAccessScopeArgs(
      applicationArn: Input.asInput<String>(map['applicationArn']),
      authorizedTargets:
          Input.asOptionalInput<List<String>>(map['authorizedTargets']),
      region: Input.asOptionalInput<String>(map['region']),
      scope: Input.asInput<String>(map['scope']),
    );
  }
}
