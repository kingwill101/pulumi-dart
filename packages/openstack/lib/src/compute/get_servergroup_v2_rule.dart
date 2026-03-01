// ignore_for_file: unused_element, unnecessary_cast


class GetServergroupV2Rule {
  final int maxServerPerHost;

  /// Creates a new [GetServergroupV2Rule].
  /// [maxServerPerHost] Required.
  GetServergroupV2Rule({
    required this.maxServerPerHost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxServerPerHost': maxServerPerHost,
    };
  }

  factory GetServergroupV2Rule.fromMap(Map<String, dynamic> map) {
    return GetServergroupV2Rule(
      maxServerPerHost: map['maxServerPerHost'] as int,
    );
  }
}

