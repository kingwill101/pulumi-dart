// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PatchBaselineSource {
  /// Value of the yum repo configuration. For information about other options available for your yum repository configuration, see the [`dnf.conf` documentation](https://man7.org/linux/man-pages/man5/dnf.conf.5.html)
  final pulumi.Input<String> configuration;

  /// Name specified to identify the patch source.
  final pulumi.Input<String> name;

  /// Specific operating system versions a patch repository applies to, such as `"Ubuntu16.04"`, `"AmazonLinux2016.09"`, `"RedhatEnterpriseLinux7.2"` or `"Suse12.7"`. For lists of supported product values, see [PatchFilter](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_PatchFilter.html).
  final pulumi.Input<List<String>> products;

  /// Creates a new [PatchBaselineSource].
  /// [configuration] Value of the yum repo configuration. For information about other options available for your yum repository configuration, see the [`dnf.conf` documentation](https://man7.org/linux/man-pages/man5/dnf.conf.5.html)
  /// [name] Name specified to identify the patch source.
  /// [products] Specific operating system versions a patch repository applies to, such as `"Ubuntu16.04"`, `"AmazonLinux2016.09"`, `"RedhatEnterpriseLinux7.2"` or `"Suse12.7"`. For lists of supported product values, see [PatchFilter](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_PatchFilter.html).
  PatchBaselineSource({
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

  factory PatchBaselineSource.fromMap(Map<String, dynamic> map) {
    return PatchBaselineSource(
      configuration: pulumi.Input.fromValue(map['configuration'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      products: pulumi.Input.fromValue(
        (map['products'] as List).cast<String>(),
      ),
    );
  }
}
