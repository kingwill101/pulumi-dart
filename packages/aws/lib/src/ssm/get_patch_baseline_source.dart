// ignore_for_file: unused_element, unnecessary_cast

class GetPatchBaselineSource {
  /// Value of the yum repo configuration.
  final String configuration;

  /// Name specified to identify the patch source.
  final String name;

  /// Specific operating system versions a patch repository applies to.
  final List<String> products;

  /// Creates a new [GetPatchBaselineSource].
  /// [configuration] Value of the yum repo configuration.
  /// [name] Name specified to identify the patch source.
  /// [products] Specific operating system versions a patch repository applies to.
  GetPatchBaselineSource({
    required this.configuration,
    required this.name,
    required this.products,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configuration'] = configuration;
    map['name'] = name;
    map['products'] = products;
    return map;
  }

  factory GetPatchBaselineSource.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselineSource(
      configuration: map['configuration'] as String,
      name: map['name'] as String,
      products: (map['products'] as List).cast<String>(),
    );
  }
}
