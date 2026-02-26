// ignore_for_file: unused_element, unnecessary_cast

import 'installation2.dart';

/// Details of a package occurrence.
class GrafeasV1beta1PackageDetails {
  /// Where the package was installed.
  final Installation2 installation;

  GrafeasV1beta1PackageDetails({
    required this.installation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['installation'] = installation.toMap();
    return map;
  }

  factory GrafeasV1beta1PackageDetails.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1PackageDetails(
      installation: Installation2.fromMap(
          (map['installation'] as Map).cast<String, dynamic>()),
    );
  }
}
