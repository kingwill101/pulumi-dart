// ignore_for_file: unused_element, unnecessary_cast

class AppLoggingSettingsAudioRecordingConfig {
  /// The [Cloud Storage](https://cloud.google.com/storage) bucket to store the
  /// session audio recordings. The URI must start with "gs://".
  /// Note: If the Cloud Storage bucket is in a different project from the app,
  /// you should grant `storage.objects.create` permission to the CES service
  /// agent `service-@gcp-sa-ces.iam.gserviceaccount.com`.
  final String? gcsBucket;

  /// The Cloud Storage path prefix for audio recordings.
  /// This prefix can include the following placeholders, which will be
  /// dynamically substituted at serving time:
  /// - $project:   project ID
  /// - $location:  app location
  /// - $app:       app ID
  /// - $date:      session date in YYYY-MM-DD format
  /// - $session:   session ID
  /// If the path prefix is not specified, the default prefix
  /// `$project/$location/$app/$date/$session/` will be used.
  final String? gcsPathPrefix;

  /// Creates a new [AppLoggingSettingsAudioRecordingConfig].
  /// [gcsBucket] The [Cloud Storage](https://cloud.google.com/storage) bucket to store the
  /// [gcsPathPrefix] The Cloud Storage path prefix for audio recordings.
  AppLoggingSettingsAudioRecordingConfig({this.gcsBucket, this.gcsPathPrefix});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcsBucket': ?gcsBucket,
      'gcsPathPrefix': ?gcsPathPrefix,
    };
  }

  factory AppLoggingSettingsAudioRecordingConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppLoggingSettingsAudioRecordingConfig(
      gcsBucket: map['gcsBucket'] == null ? null : map['gcsBucket'] as String,
      gcsPathPrefix: map['gcsPathPrefix'] == null
          ? null
          : map['gcsPathPrefix'] as String,
    );
  }
}
