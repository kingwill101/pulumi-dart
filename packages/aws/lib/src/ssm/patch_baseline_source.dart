// ignore_for_file: unused_element, unnecessary_cast

class PatchBaselineSource {
  /// Value of the yum repo configuration. For information about other options available for your yum repository configuration, see the [`dnf.conf` documentation](https://man7.org/linux/man-pages/man5/dnf.conf.5.html)
  final String configuration;

  /// Name specified to identify the patch source.
  final String name;

  /// Specific operating system versions a patch repository applies to, such as `"Ubuntu16.04"`, `"AmazonLinux2016.09"`, `"RedhatEnterpriseLinux7.2"` or `"Suse12.7"`. For lists of supported product values, see [PatchFilter](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_PatchFilter.html).
  final List<String> products;

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
    final map = <String, dynamic>{};
    map['configuration'] = configuration;
    map['name'] = name;
    map['products'] = products;
    return map;
  }

  factory PatchBaselineSource.fromMap(Map<String, dynamic> map) {
    return PatchBaselineSource(
      configuration: map['configuration'] as String,
      name: map['name'] as String,
      products: (map['products'] as List).cast<String>(),
    );
  }
}
