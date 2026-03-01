// ignore_for_file: unused_element, unnecessary_cast


class ServiceBinaryAuthorization {
  /// If present, indicates to use Breakglass using this justification. If useDefault is False, then it must be empty. For more information on breakglass, see https://cloud.google.com/binary-authorization/docs/using-breakglass
  final String? breakglassJustification;
  /// The path to a binary authorization policy. Format: projects/{project}/platforms/cloudRun/{policy-name}
  final String? policy;
  /// If True, indicates to use the default project's binary authorization policy. If False, binary authorization will be disabled.
  final bool? useDefault;

  /// Creates a new [ServiceBinaryAuthorization].
  /// [breakglassJustification] If present, indicates to use Breakglass using this justification. If useDefault is False, then it must be empty. For more information on breakglass, see https://cloud.google.com/binary-authorization/docs/using-breakglass
  /// [policy] The path to a binary authorization policy. Format: projects/{project}/platforms/cloudRun/{policy-name}
  /// [useDefault] If True, indicates to use the default project's binary authorization policy. If False, binary authorization will be disabled.
  ServiceBinaryAuthorization({
    this.breakglassJustification,
    this.policy,
    this.useDefault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'breakglassJustification': ?breakglassJustification,
      'policy': ?policy,
      'useDefault': ?useDefault,
    };
  }

  factory ServiceBinaryAuthorization.fromMap(Map<String, dynamic> map) {
    return ServiceBinaryAuthorization(
      breakglassJustification: map['breakglassJustification'] == null ? null : map['breakglassJustification'] as String,
      policy: map['policy'] == null ? null : map['policy'] as String,
      useDefault: map['useDefault'] == null ? null : map['useDefault'] as bool,
    );
  }
}

