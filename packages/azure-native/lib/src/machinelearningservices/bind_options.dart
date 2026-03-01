// ignore_for_file: unused_element, unnecessary_cast


/// Describes the bind options for the container
class BindOptions {
  /// Indicate whether to create host path.
  final bool? createHostPath;
  /// Type of Bind Option
  final String? propagation;
  /// Mention the selinux options.
  final String? selinux;

  /// Creates a new [BindOptions].
  /// [createHostPath] Indicate whether to create host path.
  /// [propagation] Type of Bind Option
  /// [selinux] Mention the selinux options.
  BindOptions({
    this.createHostPath,
    this.propagation,
    this.selinux,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createHostPath': ?createHostPath,
      'propagation': ?propagation,
      'selinux': ?selinux,
    };
  }

  factory BindOptions.fromMap(Map<String, dynamic> map) {
    return BindOptions(
      createHostPath: map['createHostPath'] == null ? null : map['createHostPath'] as bool,
      propagation: map['propagation'] == null ? null : map['propagation'] as String,
      selinux: map['selinux'] == null ? null : map['selinux'] as String,
    );
  }
}

