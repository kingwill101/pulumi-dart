// ignore_for_file: unused_element, unnecessary_cast

class HostingCustomDomainCertVerificationHttp {
  /// A text string to serve at the path.
  final String? desired;

  /// Whether Hosting was able to find the required file contents on the
  /// specified path during its last check.
  final String? discovered;

  /// (Output)
  /// The last time Hosting systems checked for the file contents.
  final String? lastCheckTime;

  /// The path to the file.
  final String? path;

  HostingCustomDomainCertVerificationHttp({
    this.desired,
    this.discovered,
    this.lastCheckTime,
    this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final desiredValue = desired;
    if (desiredValue != null) {
      map['desired'] = desiredValue;
    }
    final discoveredValue = discovered;
    if (discoveredValue != null) {
      map['discovered'] = discoveredValue;
    }
    final lastCheckTimeValue = lastCheckTime;
    if (lastCheckTimeValue != null) {
      map['lastCheckTime'] = lastCheckTimeValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    return map;
  }

  factory HostingCustomDomainCertVerificationHttp.fromMap(
      Map<String, dynamic> map) {
    return HostingCustomDomainCertVerificationHttp(
      desired: map['desired'] == null ? null : map['desired'] as String,
      discovered:
          map['discovered'] == null ? null : map['discovered'] as String,
      lastCheckTime:
          map['lastCheckTime'] == null ? null : map['lastCheckTime'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
