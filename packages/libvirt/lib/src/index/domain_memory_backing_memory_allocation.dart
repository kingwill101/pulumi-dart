// ignore_for_file: unused_element, unnecessary_cast


class DomainMemoryBackingMemoryAllocation {
  /// Sets the mode of memory allocation, determining if it is static, dynamic, or configured otherwise.
  final String? mode;
  /// Specifies the number of threads allocated for managing memory allocation tasks in the domain.
  final double? threads;

  /// Creates a new [DomainMemoryBackingMemoryAllocation].
  /// [mode] Sets the mode of memory allocation, determining if it is static, dynamic, or configured otherwise.
  /// [threads] Specifies the number of threads allocated for managing memory allocation tasks in the domain.
  DomainMemoryBackingMemoryAllocation({
    this.mode,
    this.threads,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'threads': ?threads,
    };
  }

  factory DomainMemoryBackingMemoryAllocation.fromMap(Map<String, dynamic> map) {
    return DomainMemoryBackingMemoryAllocation(
      mode: map['mode'] == null ? null : map['mode'] as String,
      threads: map['threads'] == null ? null : map['threads'] as double,
    );
  }
}

