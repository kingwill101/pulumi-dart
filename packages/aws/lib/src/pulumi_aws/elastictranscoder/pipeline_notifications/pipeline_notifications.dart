// ignore_for_file: unused_element, unnecessary_cast

class PipelineNotifications {
  /// The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder has finished processing a job in this pipeline.
  final String? completed;

  /// The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters an error condition while processing a job in this pipeline.
  final String? error;

  /// The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify when Elastic Transcoder has started to process a job in this pipeline.
  final String? progressing;

  /// The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters a warning condition while processing a job in this pipeline.
  ///
  /// The <span pulumi-lang-nodejs="`thumbnailConfig`" pulumi-lang-dotnet="`ThumbnailConfig`" pulumi-lang-go="`thumbnailConfig`" pulumi-lang-python="`thumbnail_config`" pulumi-lang-yaml="`thumbnailConfig`" pulumi-lang-java="`thumbnailConfig`">`thumbnail_config`</span> object specifies information about the Amazon S3 bucket in
  /// which you want Elastic Transcoder to save thumbnail files: which bucket to use,
  /// which users you want to have access to the files, the type of access you want
  /// users to have, and the storage class that you want to assign to the files. If
  /// you specify values for <span pulumi-lang-nodejs="`contentConfig`" pulumi-lang-dotnet="`ContentConfig`" pulumi-lang-go="`contentConfig`" pulumi-lang-python="`content_config`" pulumi-lang-yaml="`contentConfig`" pulumi-lang-java="`contentConfig`">`content_config`</span>, you must also specify values for
  /// <span pulumi-lang-nodejs="`thumbnailConfig`" pulumi-lang-dotnet="`ThumbnailConfig`" pulumi-lang-go="`thumbnailConfig`" pulumi-lang-python="`thumbnail_config`" pulumi-lang-yaml="`thumbnailConfig`" pulumi-lang-java="`thumbnailConfig`">`thumbnail_config`</span> even if you don't want to create thumbnails. (You control
  /// whether to create thumbnails when you create a job. For more information, see
  /// ThumbnailPattern in the topic Create Job.) If you specify values for
  /// <span pulumi-lang-nodejs="`contentConfig`" pulumi-lang-dotnet="`ContentConfig`" pulumi-lang-go="`contentConfig`" pulumi-lang-python="`content_config`" pulumi-lang-yaml="`contentConfig`" pulumi-lang-java="`contentConfig`">`content_config`</span> and <span pulumi-lang-nodejs="`thumbnailConfig`" pulumi-lang-dotnet="`ThumbnailConfig`" pulumi-lang-go="`thumbnailConfig`" pulumi-lang-python="`thumbnail_config`" pulumi-lang-yaml="`thumbnailConfig`" pulumi-lang-java="`thumbnailConfig`">`thumbnail_config`</span>, omit the OutputBucket object.
  final String? warning;

  PipelineNotifications({
    this.completed,
    this.error,
    this.progressing,
    this.warning,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final completedValue = completed;
    if (completedValue != null) {
      map['completed'] = completedValue;
    }
    final errorValue = error;
    if (errorValue != null) {
      map['error'] = errorValue;
    }
    final progressingValue = progressing;
    if (progressingValue != null) {
      map['progressing'] = progressingValue;
    }
    final warningValue = warning;
    if (warningValue != null) {
      map['warning'] = warningValue;
    }
    return map;
  }

  factory PipelineNotifications.fromMap(Map<String, dynamic> map) {
    return PipelineNotifications(
      completed: map['completed'] == null ? null : map['completed'] as String,
      error: map['error'] == null ? null : map['error'] as String,
      progressing:
          map['progressing'] == null ? null : map['progressing'] as String,
      warning: map['warning'] == null ? null : map['warning'] as String,
    );
  }
}
