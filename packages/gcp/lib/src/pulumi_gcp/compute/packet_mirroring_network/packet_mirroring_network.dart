// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringNetwork {
  /// The full<span pulumi-lang-nodejs=" selfLink " pulumi-lang-dotnet=" SelfLink " pulumi-lang-go=" selfLink " pulumi-lang-python=" self_link " pulumi-lang-yaml=" selfLink " pulumi-lang-java=" selfLink "> self_link </span>URL of the network where this rule is active.
  final String url;

  PacketMirroringNetwork({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['url'] = url;
    return map;
  }

  factory PacketMirroringNetwork.fromMap(Map<String, dynamic> map) {
    return PacketMirroringNetwork(
      url: map['url'] as String,
    );
  }
}
