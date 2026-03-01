// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_profile_link_channel.dart';

class ContactProfileLink {
  /// A list of contact profile link channels. A `channels` block as defined below.
  final List<ContactProfileLinkChannel> channels;
  /// Direction of the link. Possible values are `Uplink` and `Downlink`.
  final String direction;
  /// Name of the link.
  final String name;
  /// Polarization of the link. Possible values are `LHCP`, `RHCP`, `linearVertical` and `linearHorizontal`.
  final String polarization;

  /// Creates a new [ContactProfileLink].
  /// [channels] A list of contact profile link channels. A `channels` block as defined below.
  /// [direction] Direction of the link. Possible values are `Uplink` and `Downlink`.
  /// [name] Name of the link.
  /// [polarization] Polarization of the link. Possible values are `LHCP`, `RHCP`, `linearVertical` and `linearHorizontal`.
  ContactProfileLink({
    required this.channels,
    required this.direction,
    required this.name,
    required this.polarization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channels': pulumi.Input.encodeList<ContactProfileLinkChannel, Map<String, dynamic>>(channels, (value) => value.toMap()),
      'direction': direction,
      'name': name,
      'polarization': polarization,
    };
  }

  factory ContactProfileLink.fromMap(Map<String, dynamic> map) {
    return ContactProfileLink(
      channels: pulumi.Input.decodeList<ContactProfileLinkChannel>(map['channels'], (value) => ContactProfileLinkChannel.fromMap((value as Map).cast<String, dynamic>())),
      direction: map['direction'] as String,
      name: map['name'] as String,
      polarization: map['polarization'] as String,
    );
  }
}

