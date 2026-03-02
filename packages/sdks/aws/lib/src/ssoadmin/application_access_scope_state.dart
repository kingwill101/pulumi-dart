// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationAccessScope resources.
class ApplicationAccessScopeState {
  /// Specifies the ARN of the application with the access scope with the targets to add or update.
  final pulumi.Input<String>? applicationArn;
  /// Specifies an array list of ARNs that represent the authorized targets for this access scope.
  final pulumi.Input<List<String>>? authorizedTargets;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the name of the access scope to be associated with the specified targets.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? scope;

  /// Creates a new [ApplicationAccessScopeState].
  /// [applicationArn] Specifies the ARN of the application with the access scope with the targets to add or update.
  /// [authorizedTargets] Specifies an array list of ARNs that represent the authorized targets for this access scope.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scope] Specifies the name of the access scope to be associated with the specified targets.
  ApplicationAccessScopeState({
    this.applicationArn,
    this.authorizedTargets,
    this.region,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': ?applicationArn,
      'authorizedTargets': ?authorizedTargets,
      'region': ?region,
      'scope': ?scope,
    };
  }

  factory ApplicationAccessScopeState.fromMap(Map<String, dynamic> map) {
    return ApplicationAccessScopeState(
      applicationArn: map['applicationArn'] == null ? null : (map['applicationArn'] as String).input(),
      authorizedTargets: map['authorizedTargets'] == null ? null : ((map['authorizedTargets'] as List).cast<String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
    );
  }
}

