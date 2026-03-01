// ignore_for_file: unused_element, unnecessary_cast


/// Auth setting for SSH auth.
class AcceleratorSshSetting {
  /// The type of the auth setting.
  /// Expected value is 'SSH'.
  final String authType;
  /// Public SSH Key of git repository.
  final String? hostKey;
  /// SSH Key algorithm of git repository.
  final String? hostKeyAlgorithm;
  /// Private SSH Key algorithm of git repository.
  final String? privateKey;

  /// Creates a new [AcceleratorSshSetting].
  /// [authType] The type of the auth setting.
  /// [hostKey] Public SSH Key of git repository.
  /// [hostKeyAlgorithm] SSH Key algorithm of git repository.
  /// [privateKey] Private SSH Key algorithm of git repository.
  AcceleratorSshSetting({
    required this.authType,
    this.hostKey,
    this.hostKeyAlgorithm,
    this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': authType,
      'hostKey': ?hostKey,
      'hostKeyAlgorithm': ?hostKeyAlgorithm,
      'privateKey': ?privateKey,
    };
  }

  factory AcceleratorSshSetting.fromMap(Map<String, dynamic> map) {
    return AcceleratorSshSetting(
      authType: map['authType'] as String,
      hostKey: map['hostKey'] == null ? null : map['hostKey'] as String,
      hostKeyAlgorithm: map['hostKeyAlgorithm'] == null ? null : map['hostKeyAlgorithm'] as String,
      privateKey: map['privateKey'] == null ? null : map['privateKey'] as String,
    );
  }
}

