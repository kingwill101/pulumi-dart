// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_access_logging_config/instance_access_logging_config.dart';

/// The set of arguments for Instance.
class InstanceArgs2 {
  /// Access logging configuration enables the access logging feature at the instance.
  /// Apigee customers can enable access logging to ship the access logs to their own project's cloud logging.
  /// Structure is documented below.
  final Input<InstanceAccessLoggingConfig>? accessLoggingConfig;

  /// Optional. Customer accept list represents the list of projects (id/number) on customer
  /// side that can privately connect to the service attachment. It is an optional field
  /// which the customers can provide during the instance creation. By default, the customer
  /// project associated with the Apigee organization will be included to the list.
  final Input<List<String>>? consumerAcceptLists;

  /// Description of the instance.
  final Input<String>? description;

  /// Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only.
  /// Use the following format: `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`
  final Input<String>? diskEncryptionKeyName;

  /// Display name of the instance.
  final Input<String>? displayName;

  /// IP range represents the customer-provided CIDR block of length 22 that will be used for
  /// the Apigee instance creation. This optional range, if provided, should be freely
  /// available as part of larger named range the customer has allocated to the Service
  /// Networking peering. If this is not provided, Apigee will automatically request for any
  /// available /22 CIDR block from Service Networking. The customer should use this CIDR block
  /// for configuring their firewall needs to allow traffic from Apigee.
  /// Input format: "a.b.c.d/22"
  final Input<String>? ipRange;

  /// Required. Compute Engine location where the instance resides.
  final Input<String> location;

  /// Resource ID of the instance.
  final Input<String>? name;

  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  final Input<String> orgId;

  /// The size of the CIDR block range that will be reserved by the instance. For valid values,
  /// see [CidrRange](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.instances#CidrRange) on the documentation.
  final Input<String>? peeringCidrRange;

  InstanceArgs2({
    this.accessLoggingConfig,
    this.consumerAcceptLists,
    this.description,
    this.diskEncryptionKeyName,
    this.displayName,
    this.ipRange,
    required this.location,
    this.name,
    required this.orgId,
    this.peeringCidrRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessLoggingConfigValue = accessLoggingConfig;
    if (accessLoggingConfigValue != null) {
      map['accessLoggingConfig'] = Input.mapOptionalInputValue<
              InstanceAccessLoggingConfig, Map<String, dynamic>>(
          accessLoggingConfigValue, (value) => value.toMap());
    }
    final consumerAcceptListsValue = consumerAcceptLists;
    if (consumerAcceptListsValue != null) {
      map['consumerAcceptLists'] = consumerAcceptListsValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final diskEncryptionKeyNameValue = diskEncryptionKeyName;
    if (diskEncryptionKeyNameValue != null) {
      map['diskEncryptionKeyName'] = diskEncryptionKeyNameValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final ipRangeValue = ipRange;
    if (ipRangeValue != null) {
      map['ipRange'] = ipRangeValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['orgId'] = orgId;
    final peeringCidrRangeValue = peeringCidrRange;
    if (peeringCidrRangeValue != null) {
      map['peeringCidrRange'] = peeringCidrRangeValue;
    }
    return map;
  }

  factory InstanceArgs2.fromMap(Map<String, dynamic> map) {
    return InstanceArgs2(
      accessLoggingConfig: Input.asOptionalInput<InstanceAccessLoggingConfig>(
          map['accessLoggingConfig']),
      consumerAcceptLists:
          Input.asOptionalInput<List<String>>(map['consumerAcceptLists']),
      description: Input.asOptionalInput<String>(map['description']),
      diskEncryptionKeyName:
          Input.asOptionalInput<String>(map['diskEncryptionKeyName']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      ipRange: Input.asOptionalInput<String>(map['ipRange']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      orgId: Input.asInput<String>(map['orgId']),
      peeringCidrRange: Input.asOptionalInput<String>(map['peeringCidrRange']),
    );
  }
}
