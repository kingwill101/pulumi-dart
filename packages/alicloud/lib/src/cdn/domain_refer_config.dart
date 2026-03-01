// ignore_for_file: unused_element, unnecessary_cast


class DomainReferConfig {
  final String? allowEmpty;
  final List<String> referLists;
  final String? referType;

  /// Creates a new [DomainReferConfig].
  /// [allowEmpty] Optional.
  /// [referLists] Required.
  /// [referType] Optional.
  DomainReferConfig({
    this.allowEmpty,
    required this.referLists,
    this.referType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowEmpty': ?allowEmpty,
      'referLists': referLists,
      'referType': ?referType,
    };
  }

  factory DomainReferConfig.fromMap(Map<String, dynamic> map) {
    return DomainReferConfig(
      allowEmpty: map['allowEmpty'] == null ? null : map['allowEmpty'] as String,
      referLists: (map['referLists'] as List).cast<String>(),
      referType: map['referType'] == null ? null : map['referType'] as String,
    );
  }
}

