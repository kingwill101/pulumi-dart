// ignore_for_file: unused_element, unnecessary_cast

class WebAppWebAppUnit {
  final int provisioned;

  /// Creates a new [WebAppWebAppUnit].
  /// [provisioned] Required.
  WebAppWebAppUnit({
    required this.provisioned,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['provisioned'] = provisioned;
    return map;
  }

  factory WebAppWebAppUnit.fromMap(Map<String, dynamic> map) {
    return WebAppWebAppUnit(
      provisioned: map['provisioned'] as int,
    );
  }
}
