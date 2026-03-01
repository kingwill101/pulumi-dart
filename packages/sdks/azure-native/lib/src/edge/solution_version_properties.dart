// ignore_for_file: unused_element, unnecessary_cast


/// Solution Version Properties
class SolutionVersionProperties {
  /// App components spec
  final dynamic specification;

  /// Creates a new [SolutionVersionProperties].
  /// [specification] App components spec
  SolutionVersionProperties({
    required this.specification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specification': specification,
    };
  }

  factory SolutionVersionProperties.fromMap(Map<String, dynamic> map) {
    return SolutionVersionProperties(
      specification: map['specification'],
    );
  }
}

