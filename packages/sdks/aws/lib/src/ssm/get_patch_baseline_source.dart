// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPatchBaselineSource {
  /// Value of the yum repo configuration.
  final pulumi.Input<String> configuration;
  /// Name specified to identify the patch source.
  final pulumi.Input<String> name;
  /// Specific operating system versions a patch repository applies to.
  final pulumi.Input<List<String>> products;

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
    return <String, dynamic>{
      'configuration': configuration,
      'name': name,
      'products': products,
    };
  }

  factory GetPatchBaselineSource.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselineSource(
      configuration: (map['configuration'] as String).input(),
      name: (map['name'] as String).input(),
      products: ((map['products'] as List).cast<String>()).input(),
    );
  }
}

