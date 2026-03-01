// ignore_for_file: unused_element, unnecessary_cast


/// Definition of SoftwareUpdateOptions
class SoftwareUpdateOptions {
  /// <p>Whether automatic service software updates are enabled for the domain.</p>
  final bool? autoSoftwareUpdateEnabled;

  /// Creates a new [SoftwareUpdateOptions].
  /// [autoSoftwareUpdateEnabled] <p>Whether automatic service software updates are enabled for the domain.</p>
  SoftwareUpdateOptions({
    this.autoSoftwareUpdateEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSoftwareUpdateEnabled': ?autoSoftwareUpdateEnabled,
    };
  }

  factory SoftwareUpdateOptions.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateOptions(
      autoSoftwareUpdateEnabled: map['autoSoftwareUpdateEnabled'] == null ? null : map['autoSoftwareUpdateEnabled'] as bool,
    );
  }
}

