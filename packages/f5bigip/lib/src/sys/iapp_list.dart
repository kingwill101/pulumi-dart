// ignore_for_file: unused_element, unnecessary_cast


class IAppList {
  /// Name of origin
  final String? encrypted;
  /// Name of origin
  final String? value;

  /// Creates a new [IAppList].
  /// [encrypted] Name of origin
  /// [value] Name of origin
  IAppList({
    this.encrypted,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encrypted': ?encrypted,
      'value': ?value,
    };
  }

  factory IAppList.fromMap(Map<String, dynamic> map) {
    return IAppList(
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

