// ignore_for_file: unused_element, unnecessary_cast

class WorkerPoolBinaryAuthorization {
  /// If present, indicates to use Breakglass using this justification. If useDefault is False, then it must be empty. For more information on breakglass, see https://cloud.google.com/binary-authorization/docs/using-breakglass
  final String? breakglassJustification;

  /// The path to a binary authorization policy. Format: projects/{project}/platforms/cloudRun/{policy-name}
  final String? policy;

  /// If True, indicates to use the default project's binary authorization policy. If False, binary authorization will be disabled.
  final bool? useDefault;

  /// Creates a new [WorkerPoolBinaryAuthorization].
  /// [breakglassJustification] If present, indicates to use Breakglass using this justification. If useDefault is False, then it must be empty. For more information on breakglass, see https://cloud.google.com/binary-authorization/docs/using-breakglass
  /// [policy] The path to a binary authorization policy. Format: projects/{project}/platforms/cloudRun/{policy-name}
  /// [useDefault] If True, indicates to use the default project's binary authorization policy. If False, binary authorization will be disabled.
  WorkerPoolBinaryAuthorization({
    this.breakglassJustification,
    this.policy,
    this.useDefault,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final breakglassJustificationValue = breakglassJustification;
    if (breakglassJustificationValue != null) {
      map['breakglassJustification'] = breakglassJustificationValue;
    }
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue;
    }
    final useDefaultValue = useDefault;
    if (useDefaultValue != null) {
      map['useDefault'] = useDefaultValue;
    }
    return map;
  }

  factory WorkerPoolBinaryAuthorization.fromMap(Map<String, dynamic> map) {
    return WorkerPoolBinaryAuthorization(
      breakglassJustification: map['breakglassJustification'] == null
          ? null
          : map['breakglassJustification'] as String,
      policy: map['policy'] == null ? null : map['policy'] as String,
      useDefault: map['useDefault'] == null ? null : map['useDefault'] as bool,
    );
  }
}
