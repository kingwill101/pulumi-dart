// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskDriverIoThreadsIoThreadQueue {
  /// Determines the identifier for the I/O queue associated with the thread.
  final double? id;

  /// Creates a new [DomainDevicesDiskDriverIoThreadsIoThreadQueue].
  /// [id] Determines the identifier for the I/O queue associated with the thread.
  DomainDevicesDiskDriverIoThreadsIoThreadQueue({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory DomainDevicesDiskDriverIoThreadsIoThreadQueue.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskDriverIoThreadsIoThreadQueue(
      id: map['id'] == null ? null : map['id'] as double,
    );
  }
}

