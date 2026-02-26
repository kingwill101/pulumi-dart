// ignore_for_file: unused_element, unnecessary_cast

import '../instance_storage_config_storage_config_kinesis_video_stream_config_encryption_config/instance_storage_config_storage_config_kinesis_video_stream_config_encryption_config.dart';

class InstanceStorageConfigStorageConfigKinesisVideoStreamConfig {
  /// The encryption configuration. Documented below.
  final InstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig
      encryptionConfig;

  /// The prefix of the video stream. Minimum length of <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. Maximum length of <span pulumi-lang-nodejs="`128`" pulumi-lang-dotnet="`128`" pulumi-lang-go="`128`" pulumi-lang-python="`128`" pulumi-lang-yaml="`128`" pulumi-lang-java="`128`">`128`</span>. When read from the state, the value returned is `<prefix>-connect-<connect_instance_alias>-contact-` since the API appends additional details to the <span pulumi-lang-nodejs="`prefix`" pulumi-lang-dotnet="`Prefix`" pulumi-lang-go="`prefix`" pulumi-lang-python="`prefix`" pulumi-lang-yaml="`prefix`" pulumi-lang-java="`prefix`">`prefix`</span>.
  final String prefix;

  /// The number of hours data is retained in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream. Minimum value of <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>. Maximum value of <span pulumi-lang-nodejs="`87600`" pulumi-lang-dotnet="`87600`" pulumi-lang-go="`87600`" pulumi-lang-python="`87600`" pulumi-lang-yaml="`87600`" pulumi-lang-java="`87600`">`87600`</span>. A value of <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>, indicates that the stream does not persist data.
  final int retentionPeriodHours;

  InstanceStorageConfigStorageConfigKinesisVideoStreamConfig({
    required this.encryptionConfig,
    required this.prefix,
    required this.retentionPeriodHours,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptionConfig'] = encryptionConfig.toMap();
    map['prefix'] = prefix;
    map['retentionPeriodHours'] = retentionPeriodHours;
    return map;
  }

  factory InstanceStorageConfigStorageConfigKinesisVideoStreamConfig.fromMap(
      Map<String, dynamic> map) {
    return InstanceStorageConfigStorageConfigKinesisVideoStreamConfig(
      encryptionConfig:
          InstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig
              .fromMap(
                  (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      prefix: map['prefix'] as String,
      retentionPeriodHours: map['retentionPeriodHours'] as int,
    );
  }
}
