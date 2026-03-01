// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesKvmDirtyRing {
  /// Sets the size of the dirty ring buffer for KVM, which affects the efficiency of memory updates.
  final double? size;

  /// Creates a new [DomainFeaturesKvmDirtyRing].
  /// [size] Sets the size of the dirty ring buffer for KVM, which affects the efficiency of memory updates.
  DomainFeaturesKvmDirtyRing({
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': ?size,
    };
  }

  factory DomainFeaturesKvmDirtyRing.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesKvmDirtyRing(
      size: map['size'] == null ? null : map['size'] as double,
    );
  }
}

