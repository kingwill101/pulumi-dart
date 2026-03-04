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
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? customOssBucket;

  /// Whether to use the default OSS Bucket. Value:
  final pulumi.Input<String>? defaultOssBucket;

  /// Expiration Time
  final pulumi.Input<String>? endTime;

  /// The security scan engine used by the Enterprise Edition of Container Image Service. Value:
  /// - `ACR`: Uses the Trivy scan engine provided by default.
  /// - `SAS`: uses the enhanced cloud security scan engine.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? imageScanner;

  /// (Available since v1.240.0) Instance Network Access Endpoint List
  final pulumi.Input<List<RegistryEnterpriseInstanceInstanceEndpoint>>?
  instanceEndpoints;

  /// InstanceName
  final pulumi.Input<String>? instanceName;

  /// The Value configuration of the Group 1 attribute of Container Mirror Service Enterprise Edition. Valid values:
  /// - `Basic`: Basic instance
  /// - `Standard`: Standard instance
  /// - `Advanced`: Advanced Edition Instance
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? instanceType;

  /// An KMS encrypts password used to an instance. If the `password` is filled in, this field will be ignored.
  final pulumi.Input<String>? kmsEncryptedPassword;

  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating instance with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  final pulumi.Input<Map<String, String>>? kmsEncryptionContext;

  /// The number of additional namespaces to purchase. The value is an integral multiple of `5`.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? namespaceQuota;

  /// Login password, 8-32 digits, must contain at least two letters, symbols, or numbers
  final pulumi.Input<String>? password;

  /// Payment type, value:
  /// - Subscription: Prepaid.
  final pulumi.Input<String>? paymentType;

  /// Prepaid cycle. The unit is Monthly, please enter an integer multiple of 12 for annual paid products.
  ///
  /// &gt; **NOTE:**  must be set when creating a prepaid instance.
  ///
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? period;

  /// RegionId
  final pulumi.Input<String>? regionId;

  /// Automatic renewal cycle, in months.
  ///
  /// &gt; **NOTE:**  When `RenewalStatus` is set to `AutoRenewal`, it must be set.
  final pulumi.Input<int>? renewPeriod;

  /// Automatic renewal status, value:
  /// - AutoRenewal: automatic renewal.
  /// - ManualRenewal: manual renewal.
  ///
  /// Default ManualRenewal.
  final pulumi.Input<String>? renewalStatus;

  /// The number of additional repositories to purchase. The value is an integral multiple of `1000`.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? repoQuota;

  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;

  /// Instance Status
  final pulumi.Input<String>? status;

  /// The number of VPC access controls.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
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
    this.createTime,
    this.createdTime,
    this.customOssBucket,
    this.defaultOssBucket,
    this.endTime,
    this.imageScanner,
    this.instanceEndpoints,
    this.instanceName,
    this.instanceType,
    this.kmsEncryptedPassword,
    this.kmsEncryptionContext,
    this.namespaceQuota,
    this.password,
    this.paymentType,
    this.period,
    this.regionId,
    this.renewPeriod,
    this.renewalStatus,
    this.repoQuota,
    this.resourceGroupId,
    this.status,
    this.vpcQuota,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'createdTime': ?createdTime,
      'customOssBucket': ?customOssBucket,
      'defaultOssBucket': ?defaultOssBucket,
      'endTime': ?endTime,
      'imageScanner': ?imageScanner,
      'instanceEndpoints':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegistryEnterpriseInstanceInstanceEndpoint>,
            List<Map<String, dynamic>>
          >(
            instanceEndpoints,
            (value) =>
                pulumi.Input.encodeList<
                  RegistryEnterpriseInstanceInstanceEndpoint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createdTime: (() {
        final guardedValue = map['createdTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customOssBucket: (() {
        final guardedValue = map['customOssBucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultOssBucket: (() {
        final guardedValue = map['defaultOssBucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imageScanner: (() {
        final guardedValue = map['imageScanner'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceEndpoints: (() {
        final guardedValue = map['instanceEndpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RegistryEnterpriseInstanceInstanceEndpoint>(
            guardedValue,
            (value) => RegistryEnterpriseInstanceInstanceEndpoint.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      instanceName: (() {
        final guardedValue = map['instanceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsEncryptedPassword: (() {
        final guardedValue = map['kmsEncryptedPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsEncryptionContext: (() {
        final guardedValue = map['kmsEncryptionContext'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      namespaceQuota: (() {
        final guardedValue = map['namespaceQuota'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paymentType: (() {
        final guardedValue = map['paymentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      period: (() {
        final guardedValue = map['period'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      regionId: (() {
        final guardedValue = map['regionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      renewPeriod: (() {
        final guardedValue = map['renewPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      renewalStatus: (() {
        final guardedValue = map['renewalStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repoQuota: (() {
        final guardedValue = map['repoQuota'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcQuota: (() {
        final guardedValue = map['vpcQuota'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
