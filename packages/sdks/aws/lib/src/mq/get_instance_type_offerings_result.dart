// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_type_offerings_broker_instance_option.dart';

/// Result data returned by getInstanceTypeOfferings.
class GetInstanceTypeOfferingsResult {
  /// List of broker instance options. See `brokerInstanceOptions` Block below.
  final List<GetInstanceTypeOfferingsBrokerInstanceOption>? brokerInstanceOptions;
  /// Broker's engine type.
  final String? engineType;
  /// Broker's instance type.
  final String? hostInstanceType;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  /// Broker's storage type.
  final String? storageType;

  /// Creates a new [GetInstanceTypeOfferingsResult].
  /// [brokerInstanceOptions] List of broker instance options. See `brokerInstanceOptions` Block below.
  /// [engineType] Broker's engine type.
  /// [hostInstanceType] Broker's instance type.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [storageType] Broker's storage type.
  const GetInstanceTypeOfferingsResult({
    this.brokerInstanceOptions,
    this.engineType,
    this.hostInstanceType,
    this.id,
    this.region,
    this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brokerInstanceOptions': ?(() { final guardedValue = brokerInstanceOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceTypeOfferingsBrokerInstanceOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'engineType': ?engineType,
      'hostInstanceType': ?hostInstanceType,
      'id': ?id,
      'region': ?region,
      'storageType': ?storageType,
    };
  }

  factory GetInstanceTypeOfferingsResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeOfferingsResult(
      brokerInstanceOptions: (() { final guardedValue = map['brokerInstanceOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceTypeOfferingsBrokerInstanceOption>(guardedValue, (value) => GetInstanceTypeOfferingsBrokerInstanceOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      engineType: (() { final guardedValue = map['engineType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostInstanceType: (() { final guardedValue = map['hostInstanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
