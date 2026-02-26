// ignore_for_file: unused_element, unnecessary_cast

class SigningProfileSigningMaterial {
  /// The Amazon Resource Name (ARN) of the certificates that is used to sign your code.
  final String certificateArn;

  SigningProfileSigningMaterial({
    required this.certificateArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateArn'] = certificateArn;
    return map;
  }

  factory SigningProfileSigningMaterial.fromMap(Map<String, dynamic> map) {
    return SigningProfileSigningMaterial(
      certificateArn: map['certificateArn'] as String,
    );
  }
}
