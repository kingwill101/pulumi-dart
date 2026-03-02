// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssoadmin_application_access_scope_application_access_scope_args_doc}
/// The set of arguments for ApplicationAccessScope.
/// {@endtemplate}
/// {@macro pulumi_ssoadmin_application_access_scope_application_access_scope_args_doc}
class ApplicationAccessScopeArgs {
  /// Specifies the ARN of the application with the access scope with the targets to add or update.
  final pulumi.Input<String> applicationArn;
  /// Specifies an array list of ARNs that represent the authorized targets for this access scope.
  final pulumi.Input<List<String>>? authorizedTargets;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the name of the access scope to be associated with the specified targets.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> scope;

  /// Creates a new [ApplicationAccessScopeArgs].
  /// [applicationArn] Specifies the ARN of the application with the access scope with the targets to add or update.
  /// [authorizedTargets] Specifies an array list of ARNs that represent the authorized targets for this access scope.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scope] Specifies the name of the access scope to be associated with the specified targets.
  ApplicationAccessScopeArgs({
    required this.applicationArn,
    this.authorizedTargets,
    this.region,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': applicationArn,
      'authorizedTargets': ?authorizedTargets,
      'region': ?region,
      'scope': scope,
    };
  }

  factory ApplicationAccessScopeArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationAccessScopeArgs(
      applicationArn: (map['applicationArn'] as String).input(),
      authorizedTargets: map['authorizedTargets'] == null ? null : ((map['authorizedTargets'] as List).cast<String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      scope: (map['scope'] as String).input(),
    );
  }
}

