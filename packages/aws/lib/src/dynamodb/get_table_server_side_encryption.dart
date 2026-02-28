// ignore_for_file: unused_element, unnecessary_cast

class GetTableServerSideEncryption {
  final bool enabled;
  final String kmsKeyArn;

  /// Creates a new [GetTableServerSideEncryption].
  /// [enabled] Required.
  /// [kmsKeyArn] Required.
  GetTableServerSideEncryption({
    required this.enabled,
    required this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['kmsKeyArn'] = kmsKeyArn;
    return map;
  }

  factory GetTableServerSideEncryption.fromMap(Map<String, dynamic> map) {
    return GetTableServerSideEncryption(
      enabled: map['enabled'] as bool,
      kmsKeyArn: map['kmsKeyArn'] as String,
    );
  }
}
