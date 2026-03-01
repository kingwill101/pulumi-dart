// ignore_for_file: unused_element, unnecessary_cast


/// AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
class AzureFilePersistentVolumeSource {
  /// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;
  /// secretName is the name of secret that contains Azure Storage Account Name and Key
  final String secretName;
  /// secretNamespace is the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod
  final String? secretNamespace;
  /// shareName is the azure Share Name
  final String shareName;

  /// Creates a new [AzureFilePersistentVolumeSource].
  /// [readOnly] readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  /// [secretName] secretName is the name of secret that contains Azure Storage Account Name and Key
  /// [secretNamespace] secretNamespace is the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod
  /// [shareName] shareName is the azure Share Name
  AzureFilePersistentVolumeSource({
    this.readOnly,
    required this.secretName,
    this.secretNamespace,
    required this.shareName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readOnly': ?readOnly,
      'secretName': secretName,
      'secretNamespace': ?secretNamespace,
      'shareName': shareName,
    };
  }

  factory AzureFilePersistentVolumeSource.fromMap(Map<String, dynamic> map) {
    return AzureFilePersistentVolumeSource(
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      secretName: map['secretName'] as String,
      secretNamespace: map['secretNamespace'] == null ? null : map['secretNamespace'] as String,
      shareName: map['shareName'] as String,
    );
  }
}

