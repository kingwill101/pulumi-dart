// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPrebuiltEcrImage.
class GetPrebuiltEcrImageArgs {
  /// DNS suffix to use in the registry path. If not specified, the AWS provider sets it to the DNS suffix for the current region.
  final pulumi.Input<String>? dnsSuffix;

  /// Image tag for the Docker image. If not specified, the AWS provider sets the value to `1`, which for many repositories indicates the latest version. Some repositories, such as XGBoost, do not support `1` or `latest` and specific version must be used.
  final pulumi.Input<String>? imageTag;

  /// Region to use in the registry path. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Name of the repository, which is generally the algorithm or library. Values include `autogluon-inference`, `autogluon-training`, `blazingtext`, `djl-inference`, `factorization-machines`, `forecasting-deepar`, `huggingface-pytorch-inference`, `huggingface-pytorch-inference-neuron`, `huggingface-pytorch-inference-neuronx`, `huggingface-pytorch-tgi-inference`, `huggingface-pytorch-training`, `huggingface-pytorch-training-neuronx`, `huggingface-pytorch-trcomp-training`, `huggingface-tensorflow-inference`, `huggingface-tensorflow-training`, `huggingface-tensorflow-trcomp-training`, `image-classification`, `image-classification-neo`, `ipinsights`, `kmeans`, `knn`, `lda`, `linear-learner`, `mxnet-inference`, `mxnet-inference-eia`, `mxnet-training`, `ntm`, `object-detection`, `object2vec`, `pca`, `pytorch-inference`, `pytorch-inference-eia`, `pytorch-inference-graviton`, `pytorch-inference-neuronx`, `pytorch-training`, `pytorch-training-neuronx`, `pytorch-trcomp-training`, `randomcutforest`, `sagemaker-base-python`, `sagemaker-chainer`, `sagemaker-clarify-processing`, `sagemaker-data-wrangler-container`, `sagemaker-debugger-rules`, `sagemaker-geospatial-v1-0`, `sagemaker-inference-mxnet`, `sagemaker-inference-pytorch`, `sagemaker-inference-tensorflow`, `sagemaker-model-monitor-analyzer`, `sagemaker-mxnet`, `sagemaker-mxnet-eia`, `sagemaker-mxnet-serving`, `sagemaker-mxnet-serving-eia`, `sagemaker-neo-mxnet`, `sagemaker-neo-pytorch`, `sagemaker-neo-tensorflow`, `sagemaker-pytorch`, `sagemaker-rl-coach-container`, `sagemaker-rl-mxnet`, `sagemaker-rl-ray-container`, `sagemaker-rl-tensorflow`, `sagemaker-rl-vw-container`, `sagemaker-scikit-learn`, `sagemaker-spark-processing`, `sagemaker-sparkml-serving`, `sagemaker-tensorflow`, `sagemaker-tensorflow-eia`, `sagemaker-tensorflow-scriptmode`, `sagemaker-tensorflow-serving`, `sagemaker-tensorflow-serving-eia`, `sagemaker-tritonserver`, `sagemaker-xgboost`, `semantic-segmentation`, `seq2seq`, `stabilityai-pytorch-inference`, `tei`, `tei-cpu`, `tensorflow-inference`, `tensorflow-inference-eia`, `tensorflow-inference-graviton`, `tensorflow-training`, and `xgboost-neo`.
  final pulumi.Input<String> repositoryName;

  GetPrebuiltEcrImageArgs({
    this.dnsSuffix,
    this.imageTag,
    this.region,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dnsSuffixValue = dnsSuffix;
    if (dnsSuffixValue != null) {
      map['dnsSuffix'] = dnsSuffixValue;
    }
    final imageTagValue = imageTag;
    if (imageTagValue != null) {
      map['imageTag'] = imageTagValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['repositoryName'] = repositoryName;
    return map;
  }

  factory GetPrebuiltEcrImageArgs.fromMap(Map<String, dynamic> map) {
    return GetPrebuiltEcrImageArgs(
      dnsSuffix: pulumi.Input.asOptionalInput<String>(map['dnsSuffix']),
      imageTag: pulumi.Input.asOptionalInput<String>(map['imageTag']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      repositoryName: pulumi.Input.asInput<String>(map['repositoryName']),
    );
  }
}
