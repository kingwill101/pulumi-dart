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
    pulumi.Output<String>? applicationArn,
    pulumi.Output<List<String>>? authorizedTargets,
    pulumi.Output<String>? region,
    pulumi.Output<String>? scope,
  }) :
      applicationArn = pulumi.Input.asOptionalInput<String>(applicationArn),
      authorizedTargets = pulumi.Input.asOptionalInput<List<String>>(authorizedTargets),
      region = pulumi.Input.asOptionalInput<String>(region),
      scope = pulumi.Input.asOptionalInput<String>(scope);

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
      applicationArn: map['applicationArn'] == null ? null : pulumi.Output.create<String>(map['applicationArn'] as String),
      authorizedTargets: map['authorizedTargets'] == null ? null : pulumi.Output.create<List<String>>((map['authorizedTargets'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

