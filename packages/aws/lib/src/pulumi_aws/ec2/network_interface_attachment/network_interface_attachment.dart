// ignore_for_file: unused_element, unnecessary_cast

class NetworkInterfaceAttachment {
  final String? attachmentId;

  /// Integer to define the devices index.
  final int deviceIndex;

  /// ID of the instance to attach to.
  final String instance;

  /// Index of the network card. Specify a value greater than 0 when using multiple network cards, which are supported by [some instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#network-cards). The default is 0.
  final int? networkCardIndex;

  NetworkInterfaceAttachment({
    this.attachmentId,
    required this.deviceIndex,
    required this.instance,
    this.networkCardIndex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attachmentIdValue = attachmentId;
    if (attachmentIdValue != null) {
      map['attachmentId'] = attachmentIdValue;
    }
    map['deviceIndex'] = deviceIndex;
    map['instance'] = instance;
    final networkCardIndexValue = networkCardIndex;
    if (networkCardIndexValue != null) {
      map['networkCardIndex'] = networkCardIndexValue;
    }
    return map;
  }

  factory NetworkInterfaceAttachment.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceAttachment(
      attachmentId:
          map['attachmentId'] == null ? null : map['attachmentId'] as String,
      deviceIndex: map['deviceIndex'] as int,
      instance: map['instance'] as String,
      networkCardIndex: map['networkCardIndex'] == null
          ? null
          : map['networkCardIndex'] as int,
    );
  }
}
