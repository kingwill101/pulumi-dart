// ignore_for_file: unused_element, unnecessary_cast

class GetJobBinaryAuthorization {
  /// If present, indicates to use Breakglass using this justification. If useDefault is False, then it must be empty. For more information on breakglass, see https://cloud.google.com/binary-authorization/docs/using-breakglass
  final String breakglassJustification;

  /// The path to a binary authorization policy. Format: projects/{project}/platforms/cloudRun/{policy-name}
  final String policy;

  /// If True, indicates to use the default project's binary authorization policy. If False, binary authorization will be disabled.
  final bool useDefault;

  /// Creates a new [GetJobBinaryAuthorization].
  /// [breakglassJustification] If present, indicates to use Breakglass using this justification. If useDefault is False, then it must be empty. For more information on breakglass, see https://cloud.google.com/binary-authorization/docs/using-breakglass
  /// [policy] The path to a binary authorization policy. Format: projects/{project}/platforms/cloudRun/{policy-name}
  /// [useDefault] If True, indicates to use the default project's binary authorization policy. If False, binary authorization will be disabled.
  GetJobBinaryAuthorization({
    required this.breakglassJustification,
    required this.policy,
    required this.useDefault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'breakglassJustification': breakglassJustification,
      'policy': policy,
      'useDefault': useDefault,
    };
  }

  factory GetJobBinaryAuthorization.fromMap(Map<String, dynamic> map) {
    return GetJobBinaryAuthorization(
      breakglassJustification: map['breakglassJustification'] as String,
      policy: map['policy'] as String,
      useDefault: map['useDefault'] as bool,
    );
  }
}
