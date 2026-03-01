// ignore_for_file: unused_element, unnecessary_cast


/// Distribution expressions to sweep over values of model settings.
/// <example>
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
class ImageModelDistributionSettingsObjectDetectionResponse {
  /// Enable AMSGrad when optimizer is 'adam' or 'adamw'.
  final String? amsGradient;
  /// Settings for using Augmentations.
  final String? augmentations;
  /// Value of 'beta1' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  final String? beta1;
  /// Value of 'beta2' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  final String? beta2;
  /// Maximum number of detections per image, for all classes. Must be a positive integer.
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final String? boxDetectionsPerImage;
  /// During inference, only return proposals with a classification score greater than
  /// BoxScoreThreshold. Must be a float in the range[0, 1].
  final String? boxScoreThreshold;
  /// Whether to use distributer training.
  final String? distributed;
  /// Enable early stopping logic during training.
  final String? earlyStopping;
  /// Minimum number of epochs or validation evaluations to wait before primary metric improvement
  /// is tracked for early stopping. Must be a positive integer.
  final String? earlyStoppingDelay;
  /// Minimum number of epochs or validation evaluations with no primary metric improvement before
  /// the run is stopped. Must be a positive integer.
  final String? earlyStoppingPatience;
  /// Enable normalization when exporting ONNX model.
  final String? enableOnnxNormalization;
  /// Frequency to evaluate validation dataset to get metric scores. Must be a positive integer.
  final String? evaluationFrequency;
  /// Gradient accumulation means running a configured number of "GradAccumulationStep" steps without
  /// updating the model weights while accumulating the gradients of those steps, and then using
  /// the accumulated gradients to compute the weight updates. Must be a positive integer.
  final String? gradientAccumulationStep;
  /// Image size for train and validation. Must be a positive integer.
  /// Note: The training run may get into CUDA OOM if the size is too big.
  /// Note: This settings is only supported for the 'yolov5' algorithm.
  final String? imageSize;
  /// Number of layers to freeze for the model. Must be a positive integer.
  /// For instance, passing 2 as value for 'seresnext' means
  /// freezing layer0 and layer1. For a full list of models supported and details on layer freeze, please
  /// see: https://docs.microsoft.com/en-us/azure/machine-learning/how-to-auto-train-image-models.
  final String? layersToFreeze;
  /// Initial learning rate. Must be a float in the range [0, 1].
  final String? learningRate;
  /// Type of learning rate scheduler. Must be 'warmup_cosine' or 'step'.
  final String? learningRateScheduler;
  /// Maximum size of the image to be rescaled before feeding it to the backbone.
  /// Must be a positive integer. Note: training run may get into CUDA OOM if the size is too big.
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final String? maxSize;
  /// Minimum size of the image to be rescaled before feeding it to the backbone.
  /// Must be a positive integer. Note: training run may get into CUDA OOM if the size is too big.
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final String? minSize;
  /// Name of the model to use for training.
  /// For more information on the available models please visit the official documentation:
  /// https://docs.microsoft.com/en-us/azure/machine-learning/how-to-auto-train-image-models.
  final String? modelName;
  /// Model size. Must be 'small', 'medium', 'large', or 'xlarge'.
  /// Note: training run may get into CUDA OOM if the model size is too big.
  /// Note: This settings is only supported for the 'yolov5' algorithm.
  final String? modelSize;
  /// Value of momentum when optimizer is 'sgd'. Must be a float in the range [0, 1].
  final String? momentum;
  /// Enable multi-scale image by varying image size by +/- 50%.
  /// Note: training run may get into CUDA OOM if no sufficient GPU memory.
  /// Note: This settings is only supported for the 'yolov5' algorithm.
  final String? multiScale;
  /// Enable nesterov when optimizer is 'sgd'.
  final String? nesterov;
  /// IOU threshold used during inference in NMS post processing. Must be float in the range [0, 1].
  final String? nmsIouThreshold;
  /// Number of training epochs. Must be a positive integer.
  final String? numberOfEpochs;
  /// Number of data loader workers. Must be a non-negative integer.
  final String? numberOfWorkers;
  /// Type of optimizer. Must be either 'sgd', 'adam', or 'adamw'.
  final String? optimizer;
  /// Random seed to be used when using deterministic training.
  final String? randomSeed;
  /// Value of gamma when learning rate scheduler is 'step'. Must be a float in the range [0, 1].
  final String? stepLRGamma;
  /// Value of step size when learning rate scheduler is 'step'. Must be a positive integer.
  final String? stepLRStepSize;
  /// The grid size to use for tiling each image. Note: TileGridSize must not be
  /// None to enable small object detection logic. A string containing two integers in mxn format.
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final String? tileGridSize;
  /// Overlap ratio between adjacent tiles in each dimension. Must be float in the range [0, 1).
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final String? tileOverlapRatio;
  /// The IOU threshold to use to perform NMS while merging predictions from tiles and image.
  /// Used in validation/ inference. Must be float in the range [0, 1].
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  /// NMS: Non-maximum suppression
  final String? tilePredictionsNmsThreshold;
  /// Training batch size. Must be a positive integer.
  final String? trainingBatchSize;
  /// Validation batch size. Must be a positive integer.
  final String? validationBatchSize;
  /// IOU threshold to use when computing validation metric. Must be float in the range [0, 1].
  final String? validationIouThreshold;
  /// Metric computation method to use for validation metrics. Must be 'none', 'coco', 'voc', or 'coco_voc'.
  final String? validationMetricType;
  /// Value of cosine cycle when learning rate scheduler is 'warmup_cosine'. Must be a float in the range [0, 1].
  final String? warmupCosineLRCycles;
  /// Value of warmup epochs when learning rate scheduler is 'warmup_cosine'. Must be a positive integer.
  final String? warmupCosineLRWarmupEpochs;
  /// Value of weight decay when optimizer is 'sgd', 'adam', or 'adamw'. Must be a float in the range[0, 1].
  final String? weightDecay;

  /// Creates a new [ImageModelDistributionSettingsObjectDetectionResponse].
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
  ImageModelDistributionSettingsObjectDetectionResponse({
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

  factory ImageModelDistributionSettingsObjectDetectionResponse.fromMap(Map<String, dynamic> map) {
    return ImageModelDistributionSettingsObjectDetectionResponse(
      amsGradient: map['amsGradient'] == null ? null : map['amsGradient'] as String,
      augmentations: map['augmentations'] == null ? null : map['augmentations'] as String,
      beta1: map['beta1'] == null ? null : map['beta1'] as String,
      beta2: map['beta2'] == null ? null : map['beta2'] as String,
      boxDetectionsPerImage: map['boxDetectionsPerImage'] == null ? null : map['boxDetectionsPerImage'] as String,
      boxScoreThreshold: map['boxScoreThreshold'] == null ? null : map['boxScoreThreshold'] as String,
      distributed: map['distributed'] == null ? null : map['distributed'] as String,
      earlyStopping: map['earlyStopping'] == null ? null : map['earlyStopping'] as String,
      earlyStoppingDelay: map['earlyStoppingDelay'] == null ? null : map['earlyStoppingDelay'] as String,
      earlyStoppingPatience: map['earlyStoppingPatience'] == null ? null : map['earlyStoppingPatience'] as String,
      enableOnnxNormalization: map['enableOnnxNormalization'] == null ? null : map['enableOnnxNormalization'] as String,
      evaluationFrequency: map['evaluationFrequency'] == null ? null : map['evaluationFrequency'] as String,
      gradientAccumulationStep: map['gradientAccumulationStep'] == null ? null : map['gradientAccumulationStep'] as String,
      imageSize: map['imageSize'] == null ? null : map['imageSize'] as String,
      layersToFreeze: map['layersToFreeze'] == null ? null : map['layersToFreeze'] as String,
      learningRate: map['learningRate'] == null ? null : map['learningRate'] as String,
      learningRateScheduler: map['learningRateScheduler'] == null ? null : map['learningRateScheduler'] as String,
      maxSize: map['maxSize'] == null ? null : map['maxSize'] as String,
      minSize: map['minSize'] == null ? null : map['minSize'] as String,
      modelName: map['modelName'] == null ? null : map['modelName'] as String,
      modelSize: map['modelSize'] == null ? null : map['modelSize'] as String,
      momentum: map['momentum'] == null ? null : map['momentum'] as String,
      multiScale: map['multiScale'] == null ? null : map['multiScale'] as String,
      nesterov: map['nesterov'] == null ? null : map['nesterov'] as String,
      nmsIouThreshold: map['nmsIouThreshold'] == null ? null : map['nmsIouThreshold'] as String,
      numberOfEpochs: map['numberOfEpochs'] == null ? null : map['numberOfEpochs'] as String,
      numberOfWorkers: map['numberOfWorkers'] == null ? null : map['numberOfWorkers'] as String,
      optimizer: map['optimizer'] == null ? null : map['optimizer'] as String,
      randomSeed: map['randomSeed'] == null ? null : map['randomSeed'] as String,
      stepLRGamma: map['stepLRGamma'] == null ? null : map['stepLRGamma'] as String,
      stepLRStepSize: map['stepLRStepSize'] == null ? null : map['stepLRStepSize'] as String,
      tileGridSize: map['tileGridSize'] == null ? null : map['tileGridSize'] as String,
      tileOverlapRatio: map['tileOverlapRatio'] == null ? null : map['tileOverlapRatio'] as String,
      tilePredictionsNmsThreshold: map['tilePredictionsNmsThreshold'] == null ? null : map['tilePredictionsNmsThreshold'] as String,
      trainingBatchSize: map['trainingBatchSize'] == null ? null : map['trainingBatchSize'] as String,
      validationBatchSize: map['validationBatchSize'] == null ? null : map['validationBatchSize'] as String,
      validationIouThreshold: map['validationIouThreshold'] == null ? null : map['validationIouThreshold'] as String,
      validationMetricType: map['validationMetricType'] == null ? null : map['validationMetricType'] as String,
      warmupCosineLRCycles: map['warmupCosineLRCycles'] == null ? null : map['warmupCosineLRCycles'] as String,
      warmupCosineLRWarmupEpochs: map['warmupCosineLRWarmupEpochs'] == null ? null : map['warmupCosineLRWarmupEpochs'] as String,
      weightDecay: map['weightDecay'] == null ? null : map['weightDecay'] as String,
    );
  }
}

