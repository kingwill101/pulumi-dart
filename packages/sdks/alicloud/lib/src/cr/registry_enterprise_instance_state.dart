// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_enterprise_instance_instance_endpoint.dart';

/// Input properties used for looking up and filtering RegistryEnterpriseInstance resources.
class RegistryEnterpriseInstanceState {
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// . Field 'created_time' has been deprecated from provider version 1.235.0. New field 'create_time' instead.
  final pulumi.Input<String>? createdTime;
  /// Custom OSS Bucket name
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? customOssBucket;
  /// Whether to use the default OSS Bucket. Value:
  final pulumi.Input<String>? defaultOssBucket;
  /// Expiration Time
  final pulumi.Input<String>? endTime;
  /// The security scan engine used by the Enterprise Edition of Container Image Service. Value:
  /// - `ACR`: Uses the Trivy scan engine provided by default.
  /// - `SAS`: uses the enhanced cloud security scan engine.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? imageScanner;
  /// (Available since v1.240.0) Instance Network Access Endpoint List
  final pulumi.Input<List<RegistryEnterpriseInstanceInstanceEndpoint>>? instanceEndpoints;
  /// InstanceName
  final pulumi.Input<String>? instanceName;
  /// The Value configuration of the Group 1 attribute of Container Mirror Service Enterprise Edition. Valid values:
  /// - `Basic`: Basic instance
  /// - `Standard`: Standard instance
  /// - `Advanced`: Advanced Edition Instance
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? instanceType;
  /// An KMS encrypts password used to an instance. If the `password` is filled in, this field will be ignored.
  final pulumi.Input<String>? kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating instance with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  final pulumi.Input<Map<String, String>>? kmsEncryptionContext;
  /// The number of additional namespaces to purchase. The value is an integral multiple of `5`.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? namespaceQuota;
  /// Login password, 8-32 digits, must contain at least two letters, symbols, or numbers
  final pulumi.Input<String>? password;
  /// Payment type, value:
  /// - Subscription: Prepaid.
  final pulumi.Input<String>? paymentType;
  /// Prepaid cycle. The unit is Monthly, please enter an integer multiple of 12 for annual paid products.
  ///
  /// > **NOTE:**  must be set when creating a prepaid instance.
  ///
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? period;
  /// RegionId
  final pulumi.Input<String>? regionId;
  /// Automatic renewal cycle, in months.
  ///
  /// > **NOTE:**  When `RenewalStatus` is set to `AutoRenewal`, it must be set.
  final pulumi.Input<int>? renewPeriod;
  /// Automatic renewal status, value:
  /// - AutoRenewal: automatic renewal.
  /// - ManualRenewal: manual renewal.
  ///
  /// Default ManualRenewal.
  final pulumi.Input<String>? renewalStatus;
  /// The number of additional repositories to purchase. The value is an integral multiple of `1000`.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? repoQuota;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// Instance Status
  final pulumi.Input<String>? status;
  /// The number of VPC access controls.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  ///
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<int>? vpcQuota;

  /// Creates a new [RegistryEnterpriseInstanceState].
  /// [createTime] The creation time of the resource
  /// [createdTime] . Field 'created_time' has been deprecated from provider version 1.235.0. New field 'create_time' instead.
  /// [customOssBucket] Custom OSS Bucket name
  /// [defaultOssBucket] Whether to use the default OSS Bucket. Value:
  /// [endTime] Expiration Time
  /// [imageScanner] The security scan engine used by the Enterprise Edition of Container Image Service. Value:
  /// [instanceEndpoints] (Available since v1.240.0) Instance Network Access Endpoint List
  /// [instanceName] InstanceName
  /// [instanceType] The Value configuration of the Group 1 attribute of Container Mirror Service Enterprise Edition. Valid values:
  /// [kmsEncryptedPassword] An KMS encrypts password used to an instance. If the `password` is filled in, this field will be ignored.
  /// [kmsEncryptionContext] An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating instance with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  /// [namespaceQuota] The number of additional namespaces to purchase. The value is an integral multiple of `5`.
  /// [password] Login password, 8-32 digits, must contain at least two letters, symbols, or numbers
  /// [paymentType] Payment type, value:
  /// [period] Prepaid cycle. The unit is Monthly, please enter an integer multiple of 12 for annual paid products.
  /// [regionId] RegionId
  /// [renewPeriod] Automatic renewal cycle, in months.
  /// [renewalStatus] Automatic renewal status, value:
  /// [repoQuota] The number of additional repositories to purchase. The value is an integral multiple of `1000`.
  /// [resourceGroupId] The ID of the resource group
  /// [status] Instance Status
  /// [vpcQuota] The number of VPC access controls.
  RegistryEnterpriseInstanceState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? createdTime,
    pulumi.Output<String>? customOssBucket,
    pulumi.Output<String>? defaultOssBucket,
    pulumi.Output<String>? endTime,
    pulumi.Output<String>? imageScanner,
    pulumi.Output<List<RegistryEnterpriseInstanceInstanceEndpoint>>? instanceEndpoints,
    pulumi.Output<String>? instanceName,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? kmsEncryptedPassword,
    pulumi.Output<Map<String, String>>? kmsEncryptionContext,
    pulumi.Output<int>? namespaceQuota,
    pulumi.Output<String>? password,
    pulumi.Output<String>? paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<String>? regionId,
    pulumi.Output<int>? renewPeriod,
    pulumi.Output<String>? renewalStatus,
    pulumi.Output<int>? repoQuota,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<int>? vpcQuota,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      createdTime = pulumi.Input.asOptionalInput<String>(createdTime),
      customOssBucket = pulumi.Input.asOptionalInput<String>(customOssBucket),
      defaultOssBucket = pulumi.Input.asOptionalInput<String>(defaultOssBucket),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      imageScanner = pulumi.Input.asOptionalInput<String>(imageScanner),
      instanceEndpoints = pulumi.Input.asOptionalInput<List<RegistryEnterpriseInstanceInstanceEndpoint>>(instanceEndpoints),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      kmsEncryptedPassword = pulumi.Input.asOptionalInput<String>(kmsEncryptedPassword),
      kmsEncryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(kmsEncryptionContext),
      namespaceQuota = pulumi.Input.asOptionalInput<int>(namespaceQuota),
      password = pulumi.Input.asOptionalInput<String>(password),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      renewPeriod = pulumi.Input.asOptionalInput<int>(renewPeriod),
      renewalStatus = pulumi.Input.asOptionalInput<String>(renewalStatus),
      repoQuota = pulumi.Input.asOptionalInput<int>(repoQuota),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcQuota = pulumi.Input.asOptionalInput<int>(vpcQuota);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'createdTime': ?createdTime,
      'customOssBucket': ?customOssBucket,
      'defaultOssBucket': ?defaultOssBucket,
      'endTime': ?endTime,
      'imageScanner': ?imageScanner,
      'instanceEndpoints': ?pulumi.Input.mapOptionalInputValue<List<RegistryEnterpriseInstanceInstanceEndpoint>, List<Map<String, dynamic>>>(instanceEndpoints, (value) => pulumi.Input.encodeList<RegistryEnterpriseInstanceInstanceEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceName': ?instanceName,
      'instanceType': ?instanceType,
      'kmsEncryptedPassword': ?kmsEncryptedPassword,
      'kmsEncryptionContext': ?kmsEncryptionContext,
      'namespaceQuota': ?namespaceQuota,
      'password': ?password,
      'paymentType': ?paymentType,
      'period': ?period,
      'regionId': ?regionId,
      'renewPeriod': ?renewPeriod,
      'renewalStatus': ?renewalStatus,
      'repoQuota': ?repoQuota,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'vpcQuota': ?vpcQuota,
    };
  }

  factory RegistryEnterpriseInstanceState.fromMap(Map<String, dynamic> map) {
    return RegistryEnterpriseInstanceState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      createdTime: map['createdTime'] == null ? null : pulumi.Output.create<String>(map['createdTime'] as String),
      customOssBucket: map['customOssBucket'] == null ? null : pulumi.Output.create<String>(map['customOssBucket'] as String),
      defaultOssBucket: map['defaultOssBucket'] == null ? null : pulumi.Output.create<String>(map['defaultOssBucket'] as String),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      imageScanner: map['imageScanner'] == null ? null : pulumi.Output.create<String>(map['imageScanner'] as String),
      instanceEndpoints: map['instanceEndpoints'] == null ? null : pulumi.Output.create<List<RegistryEnterpriseInstanceInstanceEndpoint>>(pulumi.Input.decodeList<RegistryEnterpriseInstanceInstanceEndpoint>(map['instanceEndpoints'], (value) => RegistryEnterpriseInstanceInstanceEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      kmsEncryptedPassword: map['kmsEncryptedPassword'] == null ? null : pulumi.Output.create<String>(map['kmsEncryptedPassword'] as String),
      kmsEncryptionContext: map['kmsEncryptionContext'] == null ? null : pulumi.Output.create<Map<String, String>>((map['kmsEncryptionContext'] as Map).cast<String, String>()),
      namespaceQuota: map['namespaceQuota'] == null ? null : pulumi.Output.create<int>(map['namespaceQuota'] as int),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      renewPeriod: map['renewPeriod'] == null ? null : pulumi.Output.create<int>(map['renewPeriod'] as int),
      renewalStatus: map['renewalStatus'] == null ? null : pulumi.Output.create<String>(map['renewalStatus'] as String),
      repoQuota: map['repoQuota'] == null ? null : pulumi.Output.create<int>(map['repoQuota'] as int),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcQuota: map['vpcQuota'] == null ? null : pulumi.Output.create<int>(map['vpcQuota'] as int),
    );
  }
}

