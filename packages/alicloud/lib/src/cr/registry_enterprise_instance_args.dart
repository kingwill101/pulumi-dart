// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cr_registry_enterprise_instance_registry_enterprise_instance_args_doc}
/// The set of arguments for RegistryEnterpriseInstance.
/// {@endtemplate}
/// {@macro pulumi_cr_registry_enterprise_instance_registry_enterprise_instance_args_doc}
class RegistryEnterpriseInstanceArgs {
  /// Custom OSS Bucket name
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? customOssBucket;
  /// Whether to use the default OSS Bucket. Value:
  final pulumi.Input<String>? defaultOssBucket;
  /// The security scan engine used by the Enterprise Edition of Container Image Service. Value:
  /// - `ACR`: Uses the Trivy scan engine provided by default.
  /// - `SAS`: uses the enhanced cloud security scan engine.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? imageScanner;
  /// InstanceName
  final pulumi.Input<String> instanceName;
  /// The Value configuration of the Group 1 attribute of Container Mirror Service Enterprise Edition. Valid values:
  /// - `Basic`: Basic instance
  /// - `Standard`: Standard instance
  /// - `Advanced`: Advanced Edition Instance
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String> instanceType;
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
  final pulumi.Input<String> paymentType;
  /// Prepaid cycle. The unit is Monthly, please enter an integer multiple of 12 for annual paid products.
  ///
  /// > **NOTE:**  must be set when creating a prepaid instance.
  ///
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? period;
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
  /// The number of VPC access controls.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  ///
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<int>? vpcQuota;

  /// Creates a new [RegistryEnterpriseInstanceArgs].
  /// [customOssBucket] Custom OSS Bucket name
  /// [defaultOssBucket] Whether to use the default OSS Bucket. Value:
  /// [imageScanner] The security scan engine used by the Enterprise Edition of Container Image Service. Value:
  /// [instanceName] InstanceName
  /// [instanceType] The Value configuration of the Group 1 attribute of Container Mirror Service Enterprise Edition. Valid values:
  /// [kmsEncryptedPassword] An KMS encrypts password used to an instance. If the `password` is filled in, this field will be ignored.
  /// [kmsEncryptionContext] An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating instance with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  /// [namespaceQuota] The number of additional namespaces to purchase. The value is an integral multiple of `5`.
  /// [password] Login password, 8-32 digits, must contain at least two letters, symbols, or numbers
  /// [paymentType] Payment type, value:
  /// [period] Prepaid cycle. The unit is Monthly, please enter an integer multiple of 12 for annual paid products.
  /// [renewPeriod] Automatic renewal cycle, in months.
  /// [renewalStatus] Automatic renewal status, value:
  /// [repoQuota] The number of additional repositories to purchase. The value is an integral multiple of `1000`.
  /// [resourceGroupId] The ID of the resource group
  /// [vpcQuota] The number of VPC access controls.
  RegistryEnterpriseInstanceArgs({
    String? customOssBucket,
    String? defaultOssBucket,
    String? imageScanner,
    required String instanceName,
    required String instanceType,
    String? kmsEncryptedPassword,
    Map<String, String>? kmsEncryptionContext,
    int? namespaceQuota,
    String? password,
    required String paymentType,
    int? period,
    int? renewPeriod,
    String? renewalStatus,
    int? repoQuota,
    String? resourceGroupId,
    int? vpcQuota,
  }) :
      customOssBucket = pulumi.Input.asOptionalInput<String>(customOssBucket),
      defaultOssBucket = pulumi.Input.asOptionalInput<String>(defaultOssBucket),
      imageScanner = pulumi.Input.asOptionalInput<String>(imageScanner),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      instanceType = pulumi.Input.asInput<String>(instanceType),
      kmsEncryptedPassword = pulumi.Input.asOptionalInput<String>(kmsEncryptedPassword),
      kmsEncryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(kmsEncryptionContext),
      namespaceQuota = pulumi.Input.asOptionalInput<int>(namespaceQuota),
      password = pulumi.Input.asOptionalInput<String>(password),
      paymentType = pulumi.Input.asInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      renewPeriod = pulumi.Input.asOptionalInput<int>(renewPeriod),
      renewalStatus = pulumi.Input.asOptionalInput<String>(renewalStatus),
      repoQuota = pulumi.Input.asOptionalInput<int>(repoQuota),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      vpcQuota = pulumi.Input.asOptionalInput<int>(vpcQuota);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customOssBucket': ?customOssBucket,
      'defaultOssBucket': ?defaultOssBucket,
      'imageScanner': ?imageScanner,
      'instanceName': instanceName,
      'instanceType': instanceType,
      'kmsEncryptedPassword': ?kmsEncryptedPassword,
      'kmsEncryptionContext': ?kmsEncryptionContext,
      'namespaceQuota': ?namespaceQuota,
      'password': ?password,
      'paymentType': paymentType,
      'period': ?period,
      'renewPeriod': ?renewPeriod,
      'renewalStatus': ?renewalStatus,
      'repoQuota': ?repoQuota,
      'resourceGroupId': ?resourceGroupId,
      'vpcQuota': ?vpcQuota,
    };
  }

  factory RegistryEnterpriseInstanceArgs.fromMap(Map<String, dynamic> map) {
    return RegistryEnterpriseInstanceArgs(
      customOssBucket: map['customOssBucket'] == null ? null : map['customOssBucket'] as String,
      defaultOssBucket: map['defaultOssBucket'] == null ? null : map['defaultOssBucket'] as String,
      imageScanner: map['imageScanner'] == null ? null : map['imageScanner'] as String,
      instanceName: map['instanceName'] as String,
      instanceType: map['instanceType'] as String,
      kmsEncryptedPassword: map['kmsEncryptedPassword'] == null ? null : map['kmsEncryptedPassword'] as String,
      kmsEncryptionContext: map['kmsEncryptionContext'] == null ? null : (map['kmsEncryptionContext'] as Map).cast<String, String>(),
      namespaceQuota: map['namespaceQuota'] == null ? null : map['namespaceQuota'] as int,
      password: map['password'] == null ? null : map['password'] as String,
      paymentType: map['paymentType'] as String,
      period: map['period'] == null ? null : map['period'] as int,
      renewPeriod: map['renewPeriod'] == null ? null : map['renewPeriod'] as int,
      renewalStatus: map['renewalStatus'] == null ? null : map['renewalStatus'] as String,
      repoQuota: map['repoQuota'] == null ? null : map['repoQuota'] as int,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      vpcQuota: map['vpcQuota'] == null ? null : map['vpcQuota'] as int,
    );
  }
}

