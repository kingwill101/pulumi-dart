// ignore_for_file: unused_element, unnecessary_cast

class GetWorkerPoolTemplateNodeSelector {
  /// The GPU to attach to an instance. See https://cloud.google.com/run/docs/configuring/services/gpu for configuring GPU.
  final String accelerator;

  GetWorkerPoolTemplateNodeSelector({
    required this.accelerator,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accelerator'] = accelerator;
    return map;
  }

  factory GetWorkerPoolTemplateNodeSelector.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplateNodeSelector(
      accelerator: map['accelerator'] as String,
    );
  }
}
