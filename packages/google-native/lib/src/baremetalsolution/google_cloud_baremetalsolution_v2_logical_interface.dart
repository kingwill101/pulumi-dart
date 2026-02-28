// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logical_network_interface.dart';

/// Each logical interface represents a logical abstraction of the underlying physical interface (for eg. bond, nic) of the instance. Each logical interface can effectively map to multiple network-IP pairs and still be mapped to one underlying physical interface.
class GoogleCloudBaremetalsolutionV2LogicalInterface {
  /// The index of the logical interface mapping to the index of the hardware bond or nic on the chosen network template. This field is deprecated.
  final int? interfaceIndex;

  /// List of logical network interfaces within a logical interface.
  final List<LogicalNetworkInterface>? logicalNetworkInterfaces;

  /// Interface name. This is of syntax or and forms part of the network template name.
  final String? name;

  /// Creates a new [GoogleCloudBaremetalsolutionV2LogicalInterface].
  /// [interfaceIndex] The index of the logical interface mapping to the index of the hardware bond or nic on the chosen network template. This field is deprecated.
  /// [logicalNetworkInterfaces] List of logical network interfaces within a logical interface.
  /// [name] Interface name. This is of syntax or and forms part of the network template name.
  GoogleCloudBaremetalsolutionV2LogicalInterface({
    this.interfaceIndex,
    this.logicalNetworkInterfaces,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final interfaceIndexValue = interfaceIndex;
    if (interfaceIndexValue != null) {
      map['interfaceIndex'] = interfaceIndexValue;
    }
    final logicalNetworkInterfacesValue = logicalNetworkInterfaces;
    if (logicalNetworkInterfacesValue != null) {
      map['logicalNetworkInterfaces'] = pulumi.Input.encodeList<
              LogicalNetworkInterface, Map<String, dynamic>>(
          logicalNetworkInterfacesValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory GoogleCloudBaremetalsolutionV2LogicalInterface.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudBaremetalsolutionV2LogicalInterface(
      interfaceIndex:
          map['interfaceIndex'] == null ? null : map['interfaceIndex'] as int,
      logicalNetworkInterfaces: map['logicalNetworkInterfaces'] == null
          ? null
          : pulumi.Input.decodeList<LogicalNetworkInterface>(
              map['logicalNetworkInterfaces'],
              (value) => LogicalNetworkInterface.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
