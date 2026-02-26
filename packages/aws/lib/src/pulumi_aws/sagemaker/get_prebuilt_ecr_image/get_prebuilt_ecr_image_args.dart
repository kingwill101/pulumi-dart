// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPrebuiltEcrImage.
class GetPrebuiltEcrImageArgs {
  /// DNS suffix to use in the registry path. If not specified, the AWS provider sets it to the DNS suffix for the current region.
  final Input<String>? dnsSuffix;

  /// Image tag for the Docker image. If not specified, the AWS provider sets the value to <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>, which for many repositories indicates the latest version. Some repositories, such as XGBoost, do not support <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> or <span pulumi-lang-nodejs="`latest`" pulumi-lang-dotnet="`Latest`" pulumi-lang-go="`latest`" pulumi-lang-python="`latest`" pulumi-lang-yaml="`latest`" pulumi-lang-java="`latest`">`latest`</span> and specific version must be used.
  final Input<String>? imageTag;

  /// Region to use in the registry path. Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the repository, which is generally the algorithm or library. Values include `autogluon-inference`, `autogluon-training`, <span pulumi-lang-nodejs="`blazingtext`" pulumi-lang-dotnet="`Blazingtext`" pulumi-lang-go="`blazingtext`" pulumi-lang-python="`blazingtext`" pulumi-lang-yaml="`blazingtext`" pulumi-lang-java="`blazingtext`">`blazingtext`</span>, `djl-inference`, `factorization-machines`, `forecasting-deepar`, `huggingface-pytorch-inference`, `huggingface-pytorch-inference-neuron`, `huggingface-pytorch-inference-neuronx`, `huggingface-pytorch-tgi-inference`, `huggingface-pytorch-training`, `huggingface-pytorch-training-neuronx`, `huggingface-pytorch-trcomp-training`, `huggingface-tensorflow-inference`, `huggingface-tensorflow-training`, `huggingface-tensorflow-trcomp-training`, `image-classification`, `image-classification-neo`, <span pulumi-lang-nodejs="`ipinsights`" pulumi-lang-dotnet="`Ipinsights`" pulumi-lang-go="`ipinsights`" pulumi-lang-python="`ipinsights`" pulumi-lang-yaml="`ipinsights`" pulumi-lang-java="`ipinsights`">`ipinsights`</span>, <span pulumi-lang-nodejs="`kmeans`" pulumi-lang-dotnet="`Kmeans`" pulumi-lang-go="`kmeans`" pulumi-lang-python="`kmeans`" pulumi-lang-yaml="`kmeans`" pulumi-lang-java="`kmeans`">`kmeans`</span>, <span pulumi-lang-nodejs="`knn`" pulumi-lang-dotnet="`Knn`" pulumi-lang-go="`knn`" pulumi-lang-python="`knn`" pulumi-lang-yaml="`knn`" pulumi-lang-java="`knn`">`knn`</span>, <span pulumi-lang-nodejs="`lda`" pulumi-lang-dotnet="`Lda`" pulumi-lang-go="`lda`" pulumi-lang-python="`lda`" pulumi-lang-yaml="`lda`" pulumi-lang-java="`lda`">`lda`</span>, `linear-learner`, `mxnet-inference`, `mxnet-inference-eia`, `mxnet-training`, <span pulumi-lang-nodejs="`ntm`" pulumi-lang-dotnet="`Ntm`" pulumi-lang-go="`ntm`" pulumi-lang-python="`ntm`" pulumi-lang-yaml="`ntm`" pulumi-lang-java="`ntm`">`ntm`</span>, `object-detection`, <span pulumi-lang-nodejs="`object2vec`" pulumi-lang-dotnet="`Object2vec`" pulumi-lang-go="`object2vec`" pulumi-lang-python="`object2vec`" pulumi-lang-yaml="`object2vec`" pulumi-lang-java="`object2vec`">`object2vec`</span>, <span pulumi-lang-nodejs="`pca`" pulumi-lang-dotnet="`Pca`" pulumi-lang-go="`pca`" pulumi-lang-python="`pca`" pulumi-lang-yaml="`pca`" pulumi-lang-java="`pca`">`pca`</span>, `pytorch-inference`, `pytorch-inference-eia`, `pytorch-inference-graviton`, `pytorch-inference-neuronx`, `pytorch-training`, `pytorch-training-neuronx`, `pytorch-trcomp-training`, <span pulumi-lang-nodejs="`randomcutforest`" pulumi-lang-dotnet="`Randomcutforest`" pulumi-lang-go="`randomcutforest`" pulumi-lang-python="`randomcutforest`" pulumi-lang-yaml="`randomcutforest`" pulumi-lang-java="`randomcutforest`">`randomcutforest`</span>, `sagemaker-base-python`, `sagemaker-chainer`, `sagemaker-clarify-processing`, `sagemaker-data-wrangler-container`, `sagemaker-debugger-rules`, `sagemaker-geospatial-v1-0`, `sagemaker-inference-mxnet`, `sagemaker-inference-pytorch`, `sagemaker-inference-tensorflow`, `sagemaker-model-monitor-analyzer`, `sagemaker-mxnet`, `sagemaker-mxnet-eia`, `sagemaker-mxnet-serving`, `sagemaker-mxnet-serving-eia`, `sagemaker-neo-mxnet`, `sagemaker-neo-pytorch`, `sagemaker-neo-tensorflow`, `sagemaker-pytorch`, `sagemaker-rl-coach-container`, `sagemaker-rl-mxnet`, `sagemaker-rl-ray-container`, `sagemaker-rl-tensorflow`, `sagemaker-rl-vw-container`, `sagemaker-scikit-learn`, `sagemaker-spark-processing`, `sagemaker-sparkml-serving`, `sagemaker-tensorflow`, `sagemaker-tensorflow-eia`, `sagemaker-tensorflow-scriptmode`, `sagemaker-tensorflow-serving`, `sagemaker-tensorflow-serving-eia`, `sagemaker-tritonserver`, `sagemaker-xgboost`, `semantic-segmentation`, <span pulumi-lang-nodejs="`seq2seq`" pulumi-lang-dotnet="`Seq2seq`" pulumi-lang-go="`seq2seq`" pulumi-lang-python="`seq2seq`" pulumi-lang-yaml="`seq2seq`" pulumi-lang-java="`seq2seq`">`seq2seq`</span>, `stabilityai-pytorch-inference`, <span pulumi-lang-nodejs="`tei`" pulumi-lang-dotnet="`Tei`" pulumi-lang-go="`tei`" pulumi-lang-python="`tei`" pulumi-lang-yaml="`tei`" pulumi-lang-java="`tei`">`tei`</span>, `tei-cpu`, `tensorflow-inference`, `tensorflow-inference-eia`, `tensorflow-inference-graviton`, `tensorflow-training`, and `xgboost-neo`.
  final Input<String> repositoryName;

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
      dnsSuffix: Input.asOptionalInput<String>(map['dnsSuffix']),
      imageTag: Input.asOptionalInput<String>(map['imageTag']),
      region: Input.asOptionalInput<String>(map['region']),
      repositoryName: Input.asInput<String>(map['repositoryName']),
    );
  }
}
