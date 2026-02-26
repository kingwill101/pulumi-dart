// ignore_for_file: unused_element, unnecessary_cast

class GetJobTemplateTemplateNodeSelector {
  /// The GPU to attach to an instance. See https://cloud.google.com/run/docs/configuring/jobs/gpu for configuring GPU.
  final String accelerator;

  GetJobTemplateTemplateNodeSelector({
    required this.accelerator,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accelerator'] = accelerator;
    return map;
  }

  factory GetJobTemplateTemplateNodeSelector.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplateNodeSelector(
      accelerator: map['accelerator'] as String,
    );
  }
}
