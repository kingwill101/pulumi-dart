// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Distribution expressions to sweep over values of model settings.
/// &lt;example&gt;
/// Some examples are:
/// ```
/// ModelName = "choice('seresnext', 'resnest50')";
/// LearningRate = "uniform(0.001, 0.01)";
/// LayersToFreeze = "choice(0, 2)";
/// ```</example>
/// For more details on how to compose distribution expressions please check the documentation:
/// https://docs.microsoft.com/en-us/azure/machine-learning/how-to-tune-hyperparameters
/// For more information on the available settings please visit the official documentation:
/// https://docs.microsoft.com/en-us/azure/machine-learning/how-to-auto-train-image-models.
class ImageModelDistributionSettingsObjectDetection {
  /// Enable AMSGrad when optimizer is 'adam' or 'adamw'.
  final pulumi.Input<String>? amsGradient;
  /// Settings for using Augmentations.
  final pulumi.Input<String>? augmentations;
  /// Value of 'beta1' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  final pulumi.Input<String>? beta1;
  /// Value of 'beta2' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  final pulumi.Input<String>? beta2;
  /// Maximum number of detections per image, for all classes. Must be a positive integer.
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final pulumi.Input<String>? boxDetectionsPerImage;
  /// During inference, only return proposals with a classification score greater than
  /// BoxScoreThreshold. Must be a float in the range[0, 1].
  final pulumi.Input<String>? boxScoreThreshold;
  /// Whether to use distributer training.
  final pulumi.Input<String>? distributed;
  /// Enable early stopping logic during training.
  final pulumi.Input<String>? earlyStopping;
  /// Minimum number of epochs or validation evaluations to wait before primary metric improvement
  /// is tracked for early stopping. Must be a positive integer.
  final pulumi.Input<String>? earlyStoppingDelay;
  /// Minimum number of epochs or validation evaluations with no primary metric improvement before
  /// the run is stopped. Must be a positive integer.
  final pulumi.Input<String>? earlyStoppingPatience;
  /// Enable normalization when exporting ONNX model.
  final pulumi.Input<String>? enableOnnxNormalization;
  /// Frequency to evaluate validation dataset to get metric scores. Must be a positive integer.
  final pulumi.Input<String>? evaluationFrequency;
  /// Gradient accumulation means running a configured number of "GradAccumulationStep" steps without
  /// updating the model weights while accumulating the gradients of those steps, and then using
  /// the accumulated gradients to compute the weight updates. Must be a positive integer.
  final pulumi.Input<String>? gradientAccumulationStep;
  /// Image size for train and validation. Must be a positive integer.
  /// Note: The training run may get into CUDA OOM if the size is too big.
  /// Note: This settings is only supported for the 'yolov5' algorithm.
  final pulumi.Input<String>? imageSize;
  /// Number of layers to freeze for the model. Must be a positive integer.
  /// For instance, passing 2 as value for 'seresnext' means
  /// freezing layer0 and layer1. For a full list of models supported and details on layer freeze, please
  /// see: https://docs.microsoft.com/en-us/azure/machine-learning/how-to-auto-train-image-models.
  final pulumi.Input<String>? layersToFreeze;
  /// Initial learning rate. Must be a float in the range [0, 1].
  final pulumi.Input<String>? learningRate;
  /// Type of learning rate scheduler. Must be 'warmup_cosine' or 'step'.
  final pulumi.Input<String>? learningRateScheduler;
  /// Maximum size of the image to be rescaled before feeding it to the backbone.
  /// Must be a positive integer. Note: training run may get into CUDA OOM if the size is too big.
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final pulumi.Input<String>? maxSize;
  /// Minimum size of the image to be rescaled before feeding it to the backbone.
  /// Must be a positive integer. Note: training run may get into CUDA OOM if the size is too big.
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final pulumi.Input<String>? minSize;
  /// Name of the model to use for training.
  /// For more information on the available models please visit the official documentation:
  /// https://docs.microsoft.com/en-us/azure/machine-learning/how-to-auto-train-image-models.
  final pulumi.Input<String>? modelName;
  /// Model size. Must be 'small', 'medium', 'large', or 'xlarge'.
  /// Note: training run may get into CUDA OOM if the model size is too big.
  /// Note: This settings is only supported for the 'yolov5' algorithm.
  final pulumi.Input<String>? modelSize;
  /// Value of momentum when optimizer is 'sgd'. Must be a float in the range [0, 1].
  final pulumi.Input<String>? momentum;
  /// Enable multi-scale image by varying image size by +/- 50%.
  /// Note: training run may get into CUDA OOM if no sufficient GPU memory.
  /// Note: This settings is only supported for the 'yolov5' algorithm.
  final pulumi.Input<String>? multiScale;
  /// Enable nesterov when optimizer is 'sgd'.
  final pulumi.Input<String>? nesterov;
  /// IOU threshold used during inference in NMS post processing. Must be float in the range [0, 1].
  final pulumi.Input<String>? nmsIouThreshold;
  /// Number of training epochs. Must be a positive integer.
  final pulumi.Input<String>? numberOfEpochs;
  /// Number of data loader workers. Must be a non-negative integer.
  final pulumi.Input<String>? numberOfWorkers;
  /// Type of optimizer. Must be either 'sgd', 'adam', or 'adamw'.
  final pulumi.Input<String>? optimizer;
  /// Random seed to be used when using deterministic training.
  final pulumi.Input<String>? randomSeed;
  /// Value of gamma when learning rate scheduler is 'step'. Must be a float in the range [0, 1].
  final pulumi.Input<String>? stepLRGamma;
  /// Value of step size when learning rate scheduler is 'step'. Must be a positive integer.
  final pulumi.Input<String>? stepLRStepSize;
  /// The grid size to use for tiling each image. Note: TileGridSize must not be
  /// None to enable small object detection logic. A string containing two integers in mxn format.
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final pulumi.Input<String>? tileGridSize;
  /// Overlap ratio between adjacent tiles in each dimension. Must be float in the range [0, 1).
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final pulumi.Input<String>? tileOverlapRatio;
  /// The IOU threshold to use to perform NMS while merging predictions from tiles and image.
  /// Used in validation/ inference. Must be float in the range [0, 1].
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  /// NMS: Non-maximum suppression
  final pulumi.Input<String>? tilePredictionsNmsThreshold;
  /// Training batch size. Must be a positive integer.
  final pulumi.Input<String>? trainingBatchSize;
  /// Validation batch size. Must be a positive integer.
  final pulumi.Input<String>? validationBatchSize;
  /// IOU threshold to use when computing validation metric. Must be float in the range [0, 1].
  final pulumi.Input<String>? validationIouThreshold;
  /// Metric computation method to use for validation metrics. Must be 'none', 'coco', 'voc', or 'coco_voc'.
  final pulumi.Input<String>? validationMetricType;
  /// Value of cosine cycle when learning rate scheduler is 'warmup_cosine'. Must be a float in the range [0, 1].
  final pulumi.Input<String>? warmupCosineLRCycles;
  /// Value of warmup epochs when learning rate scheduler is 'warmup_cosine'. Must be a positive integer.
  final pulumi.Input<String>? warmupCosineLRWarmupEpochs;
  /// Value of weight decay when optimizer is 'sgd', 'adam', or 'adamw'. Must be a float in the range[0, 1].
  final pulumi.Input<String>? weightDecay;

  /// Creates a new [ImageModelDistributionSettingsObjectDetection].
  /// [amsGradient] Enable AMSGrad when optimizer is 'adam' or 'adamw'.
  /// [augmentations] Settings for using Augmentations.
  /// [beta1] Value of 'beta1' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  /// [beta2] Value of 'beta2' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  /// [boxDetectionsPerImage] Maximum number of detections per image, for all classes. Must be a positive integer.
  /// [boxScoreThreshold] During inference, only return proposals with a classification score greater than
  /// [distributed] Whether to use distributer training.
  /// [earlyStopping] Enable early stopping logic during training.
  /// [earlyStoppingDelay] Minimum number of epochs or validation evaluations to wait before primary metric improvement
  /// [earlyStoppingPatience] Minimum number of epochs or validation evaluations with no primary metric improvement before
  /// [enableOnnxNormalization] Enable normalization when exporting ONNX model.
  /// [evaluationFrequency] Frequency to evaluate validation dataset to get metric scores. Must be a positive integer.
  /// [gradientAccumulationStep] Gradient accumulation means running a configured number of "GradAccumulationStep" steps without
  /// [imageSize] Image size for train and validation. Must be a positive integer.
  /// [layersToFreeze] Number of layers to freeze for the model. Must be a positive integer.
  /// [learningRate] Initial learning rate. Must be a float in the range [0, 1].
  /// [learningRateScheduler] Type of learning rate scheduler. Must be 'warmup_cosine' or 'step'.
  /// [maxSize] Maximum size of the image to be rescaled before feeding it to the backbone.
  /// [minSize] Minimum size of the image to be rescaled before feeding it to the backbone.
  /// [modelName] Name of the model to use for training.
  /// [modelSize] Model size. Must be 'small', 'medium', 'large', or 'xlarge'.
  /// [momentum] Value of momentum when optimizer is 'sgd'. Must be a float in the range [0, 1].
  /// [multiScale] Enable multi-scale image by varying image size by +/- 50%.
  /// [nesterov] Enable nesterov when optimizer is 'sgd'.
  /// [nmsIouThreshold] IOU threshold used during inference in NMS post processing. Must be float in the range [0, 1].
  /// [numberOfEpochs] Number of training epochs. Must be a positive integer.
  /// [numberOfWorkers] Number of data loader workers. Must be a non-negative integer.
  /// [optimizer] Type of optimizer. Must be either 'sgd', 'adam', or 'adamw'.
  /// [randomSeed] Random seed to be used when using deterministic training.
  /// [stepLRGamma] Value of gamma when learning rate scheduler is 'step'. Must be a float in the range [0, 1].
  /// [stepLRStepSize] Value of step size when learning rate scheduler is 'step'. Must be a positive integer.
  /// [tileGridSize] The grid size to use for tiling each image. Note: TileGridSize must not be
  /// [tileOverlapRatio] Overlap ratio between adjacent tiles in each dimension. Must be float in the range [0, 1).
  /// [tilePredictionsNmsThreshold] The IOU threshold to use to perform NMS while merging predictions from tiles and image.
  /// [trainingBatchSize] Training batch size. Must be a positive integer.
  /// [validationBatchSize] Validation batch size. Must be a positive integer.
  /// [validationIouThreshold] IOU threshold to use when computing validation metric. Must be float in the range [0, 1].
  /// [validationMetricType] Metric computation method to use for validation metrics. Must be 'none', 'coco', 'voc', or 'coco_voc'.
  /// [warmupCosineLRCycles] Value of cosine cycle when learning rate scheduler is 'warmup_cosine'. Must be a float in the range [0, 1].
  /// [warmupCosineLRWarmupEpochs] Value of warmup epochs when learning rate scheduler is 'warmup_cosine'. Must be a positive integer.
  /// [weightDecay] Value of weight decay when optimizer is 'sgd', 'adam', or 'adamw'. Must be a float in the range[0, 1].
  const ImageModelDistributionSettingsObjectDetection({
    this.amsGradient,
    this.augmentations,
    this.beta1,
    this.beta2,
    this.boxDetectionsPerImage,
    this.boxScoreThreshold,
    this.distributed,
    this.earlyStopping,
    this.earlyStoppingDelay,
    this.earlyStoppingPatience,
    this.enableOnnxNormalization,
    this.evaluationFrequency,
    this.gradientAccumulationStep,
    this.imageSize,
    this.layersToFreeze,
    this.learningRate,
    this.learningRateScheduler,
    this.maxSize,
    this.minSize,
    this.modelName,
    this.modelSize,
    this.momentum,
    this.multiScale,
    this.nesterov,
    this.nmsIouThreshold,
    this.numberOfEpochs,
    this.numberOfWorkers,
    this.optimizer,
    this.randomSeed,
    this.stepLRGamma,
    this.stepLRStepSize,
    this.tileGridSize,
    this.tileOverlapRatio,
    this.tilePredictionsNmsThreshold,
    this.trainingBatchSize,
    this.validationBatchSize,
    this.validationIouThreshold,
    this.validationMetricType,
    this.warmupCosineLRCycles,
    this.warmupCosineLRWarmupEpochs,
    this.weightDecay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amsGradient': ?amsGradient,
      'augmentations': ?augmentations,
      'beta1': ?beta1,
      'beta2': ?beta2,
      'boxDetectionsPerImage': ?boxDetectionsPerImage,
      'boxScoreThreshold': ?boxScoreThreshold,
      'distributed': ?distributed,
      'earlyStopping': ?earlyStopping,
      'earlyStoppingDelay': ?earlyStoppingDelay,
      'earlyStoppingPatience': ?earlyStoppingPatience,
      'enableOnnxNormalization': ?enableOnnxNormalization,
      'evaluationFrequency': ?evaluationFrequency,
      'gradientAccumulationStep': ?gradientAccumulationStep,
      'imageSize': ?imageSize,
      'layersToFreeze': ?layersToFreeze,
      'learningRate': ?learningRate,
      'learningRateScheduler': ?learningRateScheduler,
      'maxSize': ?maxSize,
      'minSize': ?minSize,
      'modelName': ?modelName,
      'modelSize': ?modelSize,
      'momentum': ?momentum,
      'multiScale': ?multiScale,
      'nesterov': ?nesterov,
      'nmsIouThreshold': ?nmsIouThreshold,
      'numberOfEpochs': ?numberOfEpochs,
      'numberOfWorkers': ?numberOfWorkers,
      'optimizer': ?optimizer,
      'randomSeed': ?randomSeed,
      'stepLRGamma': ?stepLRGamma,
      'stepLRStepSize': ?stepLRStepSize,
      'tileGridSize': ?tileGridSize,
      'tileOverlapRatio': ?tileOverlapRatio,
      'tilePredictionsNmsThreshold': ?tilePredictionsNmsThreshold,
      'trainingBatchSize': ?trainingBatchSize,
      'validationBatchSize': ?validationBatchSize,
      'validationIouThreshold': ?validationIouThreshold,
      'validationMetricType': ?validationMetricType,
      'warmupCosineLRCycles': ?warmupCosineLRCycles,
      'warmupCosineLRWarmupEpochs': ?warmupCosineLRWarmupEpochs,
      'weightDecay': ?weightDecay,
    };
  }

  factory ImageModelDistributionSettingsObjectDetection.fromMap(Map<String, dynamic> map) {
    return ImageModelDistributionSettingsObjectDetection(
      amsGradient: (() { final guardedValue = map['amsGradient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      augmentations: (() { final guardedValue = map['augmentations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      beta1: (() { final guardedValue = map['beta1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      beta2: (() { final guardedValue = map['beta2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      boxDetectionsPerImage: (() { final guardedValue = map['boxDetectionsPerImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      boxScoreThreshold: (() { final guardedValue = map['boxScoreThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distributed: (() { final guardedValue = map['distributed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      earlyStopping: (() { final guardedValue = map['earlyStopping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      earlyStoppingDelay: (() { final guardedValue = map['earlyStoppingDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      earlyStoppingPatience: (() { final guardedValue = map['earlyStoppingPatience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableOnnxNormalization: (() { final guardedValue = map['enableOnnxNormalization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluationFrequency: (() { final guardedValue = map['evaluationFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gradientAccumulationStep: (() { final guardedValue = map['gradientAccumulationStep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageSize: (() { final guardedValue = map['imageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      layersToFreeze: (() { final guardedValue = map['layersToFreeze']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      learningRate: (() { final guardedValue = map['learningRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      learningRateScheduler: (() { final guardedValue = map['learningRateScheduler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxSize: (() { final guardedValue = map['maxSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minSize: (() { final guardedValue = map['minSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelName: (() { final guardedValue = map['modelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelSize: (() { final guardedValue = map['modelSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      momentum: (() { final guardedValue = map['momentum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiScale: (() { final guardedValue = map['multiScale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nesterov: (() { final guardedValue = map['nesterov']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nmsIouThreshold: (() { final guardedValue = map['nmsIouThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfEpochs: (() { final guardedValue = map['numberOfEpochs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfWorkers: (() { final guardedValue = map['numberOfWorkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optimizer: (() { final guardedValue = map['optimizer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      randomSeed: (() { final guardedValue = map['randomSeed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stepLRGamma: (() { final guardedValue = map['stepLRGamma']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stepLRStepSize: (() { final guardedValue = map['stepLRStepSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tileGridSize: (() { final guardedValue = map['tileGridSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tileOverlapRatio: (() { final guardedValue = map['tileOverlapRatio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tilePredictionsNmsThreshold: (() { final guardedValue = map['tilePredictionsNmsThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trainingBatchSize: (() { final guardedValue = map['trainingBatchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationBatchSize: (() { final guardedValue = map['validationBatchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationIouThreshold: (() { final guardedValue = map['validationIouThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationMetricType: (() { final guardedValue = map['validationMetricType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      warmupCosineLRCycles: (() { final guardedValue = map['warmupCosineLRCycles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      warmupCosineLRWarmupEpochs: (() { final guardedValue = map['warmupCosineLRWarmupEpochs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weightDecay: (() { final guardedValue = map['weightDecay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
