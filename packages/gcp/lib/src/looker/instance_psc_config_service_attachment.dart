// ignore_for_file: unused_element, unnecessary_cast

class InstancePscConfigServiceAttachment {
  /// (Output)
  /// Status of the service attachment connection.
  final String? connectionStatus;

  /// Fully qualified domain name that will be used in the private DNS record created for the service attachment.
  final String? localFqdn;

  /// URI of the service attachment to connect to.
  final String? targetServiceAttachmentUri;

  /// Creates a new [InstancePscConfigServiceAttachment].
  /// [connectionStatus] (Output)
  /// [localFqdn] Fully qualified domain name that will be used in the private DNS record created for the service attachment.
  /// [targetServiceAttachmentUri] URI of the service attachment to connect to.
  InstancePscConfigServiceAttachment({
    this.connectionStatus,
    this.localFqdn,
    this.targetServiceAttachmentUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionStatusValue = connectionStatus;
    if (connectionStatusValue != null) {
      map['connectionStatus'] = connectionStatusValue;
    }
    final localFqdnValue = localFqdn;
    if (localFqdnValue != null) {
      map['localFqdn'] = localFqdnValue;
    }
    final targetServiceAttachmentUriValue = targetServiceAttachmentUri;
    if (targetServiceAttachmentUriValue != null) {
      map['targetServiceAttachmentUri'] = targetServiceAttachmentUriValue;
    }
    return map;
  }

  factory InstancePscConfigServiceAttachment.fromMap(Map<String, dynamic> map) {
    return InstancePscConfigServiceAttachment(
      connectionStatus: map['connectionStatus'] == null
          ? null
          : map['connectionStatus'] as String,
      localFqdn: map['localFqdn'] == null ? null : map['localFqdn'] as String,
      targetServiceAttachmentUri: map['targetServiceAttachmentUri'] == null
          ? null
          : map['targetServiceAttachmentUri'] as String,
    );
  }
}
