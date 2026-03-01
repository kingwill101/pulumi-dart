// ignore_for_file: unused_element, unnecessary_cast


class GetSigningProfileSigningMaterial {
  /// ARN of the certificate used for signing.
  final String certificateArn;

  /// Creates a new [GetSigningProfileSigningMaterial].
  /// [certificateArn] ARN of the certificate used for signing.
  GetSigningProfileSigningMaterial({
    required this.certificateArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': certificateArn,
    };
  }

  factory GetSigningProfileSigningMaterial.fromMap(Map<String, dynamic> map) {
    return GetSigningProfileSigningMaterial(
      certificateArn: map['certificateArn'] as String,
    );
  }
}

